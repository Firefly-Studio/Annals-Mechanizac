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
import crafttweaker.entity.IEntityItem;
events.onPlayerChangedDimension(function(event as PlayerChangedDimensionEvent){
    val player as IPlayer = event.player;
    val world as IWorld = event.toWorld;
    if(!world.remote && world.getDimension() == 0 && world.isDayTime()){
        player.sendChat(game.localize("ans.message.comeback.success"));
    }
});
//维度钥匙
events.onEntityTravelToDimension(function(event as EntityTravelToDimensionEvent){
    val entity as IEntity = event.entity;
    if (!entity.world.remote && entity instanceof IEntityLivingBase) {
        val living as IEntityLivingBase = entity;
        if (event.dimension == 0 && !<contenttweaker:key>.matches(living.mainHandHeldItem)) {
            event.cancel();
            entity.sendMessage(game.localize("ans.message.comeback.faild"));
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
//禁止随地挖祭坛 😡
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "zensummoning:altar") {
        event.drops = [];
    }
});

events.onPlayerPickupItem(function(event as PlayerPickupItemEvent) {
    val item as IEntityItem = event.item;
    if ("zensummoning:altar" in item.definition.id) {
        event.cancel();
    }
});

//戈伯种子
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "gb:globplant") {
        event.addItem(<gb:glob_seed> * 1 % 100);
    }
});
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "gb:glob2plant") {
        event.addItem(<gb:glob2_seed> * 1 % 100);
    }
});
events.onBlockHarvestDrops(function(event as BlockHarvestDropsEvent) {
    var player as IPlayer = event.player;
    if(!event.isPlayer || event.drops.length == 0 || event.silkTouch) return;
    val block as IBlock = event.block;
    if (block.definition.id == "gb:glob3plant") {
        event.addItem(<gb:glob3_seed> * 1 % 100);
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
    player.sendChat(game.localize("ans.message.welcome"));
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
        player.sendChat(game.localize("ans.message.altar.bloodwood_sword"));
    }
});