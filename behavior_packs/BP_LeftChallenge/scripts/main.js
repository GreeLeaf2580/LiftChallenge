// @ts-check

import { world, system, Player, GameMode } from "@minecraft/server";

/** 可执行命令的物品 */
const usableItems = ["lc:quit", "lc:reset", "lc:hint", "lc:levitation", "lc:slow_falling"];
const usableEffectItems = ["lc:levitation", "lc:slow_falling"];

/**
 * @param {string} objectiveId 
 * @param {string} displayName 
 */
function getScoreboard(objectiveId, displayName) {
    return world.scoreboard.getObjective(objectiveId) ?? world.scoreboard.addObjective(objectiveId, displayName);
};

// 枚举函数转为scriptevent以实现枚举
system.afterEvents.scriptEventReceive.subscribe(event => {
    /** @type {Player} */ // @ts-ignore
    const player = event.sourceEntity;
    if (!player) {
        world.sendMessage("No Player Here!");
        return;
    }
    if (player.typeId !== "minecraft:player") return;
    const eventType = event.id.split(":")[1];

    const chapterObj = getScoreboard("chapter", "关卡章");
    const sectionObj = getScoreboard("section", "关卡节");
    const chapter = chapterObj.getScore(player) ?? 0;
    const section = sectionObj.getScore(player) ?? 0;
    switch (eventType) {
        case "levitation": case "slow_falling":
            player.runCommand(`function lib/modify_states/sound/${eventType}`);
            player.runCommand(`clear @s lc:${eventType} -1 1`);
            player.runCommand(`function levels/${chapter}${section}/events/${eventType}`);
            getScoreboard(eventType, "").addScore(player, -1);
            break;
        case "timeline": 
            player.runCommand(`function levels/${chapter}${section}/${eventType}`);
            break;
        case "reset":
            player.runCommand(`function levels/${chapter}${section}/${eventType}`);
            break;
        case "title":
            player.sendMessage([`[${chapter}-${section}]`, { translate: "tell.reset" }]);
            player.onScreenDisplay.setTitle(
                { translate: `title.${chapter}${section}` },
                {
                    fadeInDuration: 10,
                    stayDuration: 70,
                    fadeOutDuration: 20,
                    subtitle: `${chapter}-${section}`
                }
            )
            break;
    }

}, { namespaces: ["lc"] })

// 检查是否使用了物品，如有则执行命令
world.afterEvents.itemUse.subscribe(event => {
    const itemStack = event.itemStack;
    if (!usableItems.includes(itemStack.typeId)) return; // 如果不是特定物品则终止代码
    const itemId = itemStack.typeId.split(":")[1];
    const player = event.source;
    if (usableEffectItems.includes(itemStack.typeId)) {
        player.runCommand(`scriptevent lc:${itemId} ""`);
        return;
    }
    player.runCommand(`function lib/level/items/${itemId}`);
})

// 空中跳跃辅助使用道具
system.runInterval(() => {

    // 读取计分项
    const IsJumpingObj = getScoreboard("isJumping", "是否跳跃");
    const IsInSkyObj = getScoreboard("isInSky", "是否在空中");
    const dataObj = getScoreboard("data", "数据");

    world.getPlayers().forEach(player => {
        /* 
        lastIsJumping
        lastIsInSky
        jumpToUseItem 是否开启本函数“空中跳跃辅助使用道具”
        */
        const lastIsJumping = IsJumpingObj.getScore(player);
        const lastIsInSky = IsInSkyObj.getScore(player);
        const jumpToUseItem = dataObj.getScore('jumpToUseItem');

        if (jumpToUseItem && !lastIsJumping && player.isJumping && lastIsInSky) {
            usableEffectItems.forEach(itemId => {
                const isHeldingItem = player.runCommand(`execute if entity @s[hasitem={item=${itemId},location=slot.weapon.mainhand}]`).successCount;
                if (isHeldingItem) player.runCommand(`function lib/level/items/${itemId.split(":")[1]}`);
            });
        };
        IsJumpingObj.setScore(player, player.isJumping ? 1 : 0);
        IsInSkyObj.setScore(player, (!player.isOnGround && !player.isInWater) ? 1 : 0);
    });
});

//如果玩家为冒险模式，则禁止交互花盆
world.beforeEvents.playerInteractWithBlock.subscribe(event => {
    const player = event.player;
    if (player.getGameMode() !== GameMode.Adventure) return;

    const flowerPot = event.block;
    if (flowerPot.typeId !== "minecraft:flower_pot") return;

    event.cancel = true;
});
