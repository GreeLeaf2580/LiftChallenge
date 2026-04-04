// @ts-check

import { world, system, Player, GameMode } from "@minecraft/server";

/** 可执行命令的物品 */
const usableItems = ["lc:quit", "lc:reset", "lc:hint", "lc:levitation", "lc:slow_falling"];
const usableEffectItems = ["lc:levitation", "lc:slow_falling"];

/** 获取记分板，若不存在则直接新建
 * @param {string} objectiveId 
 * @param {string} [displayName] 
 */
function getScoreboard(objectiveId, displayName) {
    return world.scoreboard.getObjective(objectiveId) ?? world.scoreboard.addObjective(objectiveId, displayName);
};

// 在命令中使用脚本功能
// 枚举函数转为scriptevent以实现枚举
system.afterEvents.scriptEventReceive.subscribe(event => {

    // 如果不是玩家发送脚本事件，终止代码
    /** @type {Player} */ // @ts-ignore
    const player = event.sourceEntity;
    if (!player) return;
    if (player.typeId !== "minecraft:player") return;

    const eventType = event.id.split(":")[1];
    const chapter = getScoreboard("chapter", "关卡章").getScore(player) ?? 0;
    const section = getScoreboard("section", "关卡节").getScore(player) ?? 0;

    // 按照发送的脚本事件执行代码
    switch (eventType) {

        // 如果是两种状态效果物品，播放音效、清除物品、执行对应关卡的函数并对应扣除分数
        case "levitation": case "slow_falling":
            player.runCommand(`scriptevent lc:playSound ${eventType === "levitation" ? "mob.bat.takeoff" : "mob.phantom.flap"} 3`);
            player.runCommand(`clear @s lc:${eventType} -1 1`);
            player.runCommand(`function levels/${chapter}${section}/events/${eventType}`);
            getScoreboard(eventType).addScore(player, -1);
            break;

        // 如果是时间线函数或重置函数，执行对应关卡的函数
        case "timeline": case "reset":
            player.runCommand(`function levels/${chapter}${section}/${eventType}`);
            break;

        // 如果是标题，显示为对应关卡的标题并发送消息
        case "title":
            player.sendMessage([`[${chapter}-${section}]`, { translate: "tell.reset" }]);
            player.onScreenDisplay.setTitle(
                { translate: `title.${chapter}${section}` },
                { fadeInDuration: 10, stayDuration: 70, fadeOutDuration: 20, subtitle: `${chapter}-${section}` }
            );
            break;

        // 如果是播放音效，则延迟一段时间播放对应音调的音效
        // 语法：scriptevent "lc:playSound" <音效 ID> [延迟刻数] [音调]
        case "playSound":
            const soundId = event.message.split(" ")[0];
            const tickDelay = parseInt(event.message.split(" ")[1]) || 0;
            const pitch = parseInt(event.message.split(" ")[2]) || 1;
            system.runTimeout(() => player.playSound(soundId, { pitch: pitch }), tickDelay);
            break;

    };

}, { namespaces: ["lc"] })

// 检查是否使用了物品，如有则执行命令
world.afterEvents.itemUse.subscribe(event => {

    // 如果不是特定物品，则终止代码
    const itemStack = event.itemStack;
    if (!usableItems.includes(itemStack.typeId)) return;
    const itemId = itemStack.typeId.split(":")[1];
    const player = event.source;

    // 如果使用的是两个状态效果物品，则转到 scriptevent 并终止代码
    if (usableEffectItems.includes(itemStack.typeId)) {
        player.runCommand(`scriptevent lc:${itemId} ""`);
        return;
    };

    // 其余情况，执行对应枚举代码
    player.runCommand(`function lib/level/items/${itemId}`);

})

// 空中跳跃辅助使用道具
system.runInterval(() => {

    const IsJumpingObj = getScoreboard("isJumping", "是否跳跃");
    const IsInSkyObj = getScoreboard("isInSky", "是否在空中");
    const dataObj = getScoreboard("data", "数据");

    world.getPlayers().forEach(player => {

        const lastIsJumping = IsJumpingObj.getScore(player);
        const lastIsInSky = IsInSkyObj.getScore(player);
        const jumpToUseItem = dataObj.getScore('jumpToUseItem') ? true : false;

        // 如果：启用空中道具辅助，且跳跃时未记录为跳跃，且在空中，则尝试执行手中物品对应的代码
        if (jumpToUseItem && !lastIsJumping && player.isJumping && lastIsInSky) {
            usableEffectItems.forEach(itemId => {
                const isHeldingItem = player.runCommand(`execute if entity @s[hasitem={item=${itemId},location=slot.weapon.mainhand}]`).successCount;
                if (isHeldingItem) player.runCommand(`scriptevent lc:${itemId.split(":")[1]} ""`);
            });
        };

        // 对玩家状态进行同步
        IsJumpingObj.setScore(player, player.isJumping ? 1 : 0);
        IsInSkyObj.setScore(player, (!player.isOnGround && !player.isInWater) ? 1 : 0);

    });
});

// 如果玩家为冒险模式，则禁止交互花盆
world.beforeEvents.playerInteractWithBlock.subscribe(event => {

    // 如果不为冒险模式玩家，则终止代码
    const player = event.player;
    if (player.getGameMode() !== GameMode.Adventure) return;

    // 如果不为花盆，则终止代码
    const flowerPot = event.block;
    if (flowerPot.typeId !== "minecraft:flower_pot") return;

    // 其余情况，阻止玩家对花盆的交互
    event.cancel = true;

});
