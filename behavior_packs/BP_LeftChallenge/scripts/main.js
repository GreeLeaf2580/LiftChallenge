// 可使用物品（国际版）

import { world, system } from "@minecraft/server";

const overWorld = world.getDimension("overworld");

const IsJumping=world.scoreboard.getObjective("isJumping");
const IsInSky=world.scoreboard.getObjective("isInSky");

/** 可执行命令的物品 */
const usableItems = [ "lc:quit","lc:reset","lc:hint","lc:levitation","lc:slow_falling" ];
const usableEffectItems = [ "lc:levitation","lc:slow_falling" ];

// 检查是否使用了物品，如有则执行命令
world.afterEvents.itemUse.subscribe( event => {
    if ( usableItems.includes( event.itemStack.typeId ) ) {
        event.source.runCommand( `function lib/level/items/${event.itemStack.typeId.split(":")[1]}` );
    }
} )

// 空中跳跃辅助使用道具
/*
system.runInterval( () => {
    world.getPlayers().forEach(player => {
        let lastIsJumping=IsJumping.getScore(player),lastIsInSky=IsInSky.getScore(player);
        if (!lastIsJumping && player.isJumping && lastIsInSky){
            for (let i=0;i<usableEffectItems.length;++i){
                if (player.runCommand(`execute if entity @s[hasitem={item=${usableEffectItems[i]},location=slot.weapon.mainhand}]`).successCount)
                    player.runCommand( `function lib/level/items/${usableEffectItems[i].split(":")[1]}` );
            }
        }
        IsJumping.setScore(player,player.isJumping);
        IsInSky.setScore(player,(!player.isOnGround && !player.isInWater));
    });
});
*/