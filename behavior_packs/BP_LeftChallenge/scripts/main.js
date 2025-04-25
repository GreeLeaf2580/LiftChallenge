// 可使用物品（国际版）

import { world } from "@minecraft/server";

/** 可执行命令的物品 */
const usableItems = [ "lc:quit","lc:reset","lc:hint","lc:levitation","lc:slow_falling" ];

// 检查是否使用了物品，如有则执行命令
world.afterEvents.itemUse.subscribe( event => {
    if ( usableItems.includes( event.itemStack.typeId ) ) {
        event.source.runCommand( `function lib/level/items/${event.itemStack.typeId.split(":")[1]}` );
    }
} )
