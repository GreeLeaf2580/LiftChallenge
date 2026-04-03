# -*- coding: utf-8 -*-

import mod.server.extraServerApi as serverApi # type: ignore
ServerSystem = serverApi.GetServerSystemCls()
levelId = serverApi.GetLevelId()
compFactory = serverApi.GetEngineCompFactory()
gameComponent = compFactory.CreateGame(levelId)

usableItems = [ "lc:quit","lc:reset","lc:hint"]
usableEffectItems = ["lc:levitation", "lc:slow_falling"]

def runCommand(commandString, entityId = None, showOutPut = False):
    return compFactory.CreateCommand(levelId).SetCommand(commandString, entityId, showOutPut)

def getScoreboard(objectiveId, displayName):
    # type: (str, str) -> dict
    command = "/scoreboard objective add {} dummy {}".format(objectiveId, displayName)
    runCommand(command)

    allScoreboardObjectives = gameComponent.GetAllScoreboardObjects()
    for objective in allScoreboardObjectives:
        if objective["name"] == objectiveId: return objective

def getScore(playerId, objectiveId):
    # type: (str, str) -> (int | None)
    allScoreboardPlayers = gameComponent.GetAllScoreboardObjects()
    for scoreboardPlayer in allScoreboardPlayers:
        if scoreboardPlayer["playerId"] == playerId: 
            allObjectives = scoreboardPlayer["scoreList"]
            for objective in allObjectives:
                if objective["name"] == objectiveId:
                    return objective["value"]
    return

class lcServerSystem(ServerSystem):

    def __init__(self, namespace, systemName):
        super(lcServerSystem, self).__init__(namespace, systemName)
        self.levelId = serverApi.GetLevelId()
        self.subscribe()

    def subscribe(self):
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "ItemUseAfterServerEvent", self, self.itemUse)
        gameComponent.AddRepeatedTimer(0.05, self.heldItemFunc)

    def unsubscribe(self):
        pass

    def itemUse(self, event):
        itemStack = event["itemDict"]
        if itemStack["newItemName"] not in usableItems: return
        itemId = itemStack["newItemName"].split(":")[1] # type: str

        player = event["entityId"]
        chapter = getScore(player, "chapter")
        if chapter is None: chapter = 0
        section = getScore(player, "section")
        if section is None: section = 0

        if itemStack["newItemName"] in usableEffectItems:
            runCommand("/function levels/{}{}/events/{}".format(chapter, section, itemId), player)
            runCommand("/function lib/level/items/{}".format(itemId))
        else:
            runCommand("/function lib/level/items/{}".format(itemId))
            runCommand("/function levels/{}{}/{}".format(chapter, section, itemId), player)
    
    def heldItemFunc(self):
        allPlayers = serverApi.GetPlayerList()
        for player in allPlayers:
            isJumping = int(compFactory.CreateQueryVariable(player).EvalMolangExpression("query.is_jumping")["value"])
            isOnGround = int(compFactory.CreateQueryVariable(player).EvalMolangExpression("query.is_on_ground")["value"])
            isInWater = int(compFactory.CreateQueryVariable(player).EvalMolangExpression("query.is_in_water")["value"])

            lastIsJumping = getScore(player, "isJumping")
            lastIsInSky = getScore(player, "isInSky")
            jumpToUseItem = getScore("jumpToUseItem", "data") # Need Test

            if (jumpToUseItem and not lastIsJumping and isJumping and lastIsInSky):
                for itemId in usableEffectItems:
                    isHeldingItem = runCommand("/execute if entity @s[hasitem={{item={},location=slot.weapon.mainhand}}]".format(itemId), player)
                    if isHeldingItem: runCommand("/function lib/level/items/{}".format(itemId.split(":")[1]))

            runCommand("scoreboard players set @s isJumping {}".format(isJumping), player)
            runCommand("scoreboard players set @s isInSky {}".format(int(not bool(isOnGround) and not bool(isInWater))), player)
