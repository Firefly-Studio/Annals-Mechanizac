#loader crafttweaker reloadableevents
#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IWorld;
import crafttweaker.game.IGame;
import crafttweaker.block.IBlock;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.event.PlayerInteractEvent;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.EntityTravelToDimensionEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerRespawnEvent;
import crafttweaker.event.PlayerPickupItemEvent;
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent){
    val player as IPlayer = event.player;
    val world as IWorld = event.toWorld;
    if(!world.remote && world.getDimension() == 0 && world.isDayTime()){
        player.sendChat("主世界光芒万丈。");
    }
});
//维度钥匙
events.onEntityTravelToDimension(function(event as EntityTravelToDimensionEvent){
    val entity as IEntity = event.entity;
    if (!entity.world.remote && entity instanceof IEntityLivingBase) {
        val living as IEntityLivingBase = entity;
        if (event.dimension == 0 && !<contenttweaker:key>.matches(living.mainHandHeldItem)) {
            event.cancel();
            entity.sendMessage("请手持维度通行证");
        }
    }
});
//赛特斯石英
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "minecraft:quartz_ore") {
        event.addItem(<item:appliedenergistics2:material> * 2 % 18);
        event.addItem(<item:appliedenergistics2:material:1> * 2 % 8);
    }
});

//硫粉
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "minecraft:netherrack") {
        event.addItem(<item:mekanism:otherdust:3> * 1 % 15);
    }
});

//矿物副产
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "bno:ore_netheriron") {
        event.addItem(<item:mekanism:oreblock> * 1 % 30);
    }
});

//欢迎信息
events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent){
    var player as IPlayer = event.player;
    player.sendChat("欢迎来到Annals:Mechanizac!");
});

//复活buff
events.onPlayerRespawn(function(event as PlayerRespawnEvent){
    var player as IPlayer = event.player;
    player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(600, 1));
    player.addPotionEffect(<potion:minecraft:fire_resistance>.makePotionEffect(600, 1));
});

//祭坛
events.onPlayerInteract(function(event as PlayerInteractEvent){
    var player as IPlayer = event.player;
    var world as IWorld = event.world;
    var block as IBlock = event.block;
    if(!world.remote && <natura:bloodwood_sword> in player.currentItem && "zensummoning:altar" in block.definition.id){
        player.removeXP(100);
        player.sendChat("遗忘了一些东西。");
    }
});