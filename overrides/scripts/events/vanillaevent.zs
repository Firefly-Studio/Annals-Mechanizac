#loader crafttweaker reloadableevents
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.event.BlockHarvestDropsEvent;
//来自进阶教程
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    if(<ore:logWood>.matches(event.drops[0].stack)){
        if(isNull(player.currentItem) || !(player.currentItem.toolClasses has "axe")){
            event.drops = [];
            player.sendChat("请使用工具");
        }
    }
});