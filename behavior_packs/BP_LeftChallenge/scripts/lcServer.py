# -*- coding: utf-8 -*-

import mod.server.extraServerApi as serverApi # type: ignore
ServerSystem = serverApi.GetServerSystemCls()
compFactory = serverApi.GetEngineCompFactory()

usableItems = [ "lc:quit","lc:reset","lc:hint","lc:levitation","lc:slow_falling" ]

class lcServerSystem(ServerSystem):

    def __init__(self, namespace, systemName):
        super(lcServerSystem, self).__init__(namespace, systemName)
        self.levelId = serverApi.GetLevelId()
        self.subscribe()

    def subscribe(self):
        self.ListenForEvent(serverApi.GetEngineNamespace(), serverApi.GetEngineSystemName(), "ItemUseAfterServerEvent", self, self.itemUse)

    def unsubscribe(self):
        pass

    def itemUse(self, event):
        source = event["entityId"]
        itemStack = event["itemDict"]

        # world.afterEvents.itemUse.subscribe( event => {
        #     if ( usableItems.includes( event.itemStack.typeId ) ) {
        #         event.source.runCommand( `function items/${event.itemStack.typeId.split(":")[1]}` );
        #     }
        # } )

        if itemStack["newItemName"] in usableItems:
            compFactory.CreateCommand(self.levelId).SetCommand("/function lib/level/items/{}".format(itemStack["newItemName"].split(":")[1]), source, False)
