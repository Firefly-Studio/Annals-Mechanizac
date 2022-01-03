#loader contenttweaker
#priority 1
import crafttweaker.item.IItemStack;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.CreativeTab;


val alsTab as CreativeTab = VanillaFactory.createCreativeTab("AnnalsItems", <item:contenttweaker:netherstew>);
alsTab.register();

val hatChet as Item = VanillaFactory.createItem("hatchet");
hatChet.creativeTab = <creativetab:AnnalsItems>;
hatChet.maxStackSize = 1;
hatChet.maxDamage = 120;
hatChet.toolClass = "axe";
hatChet.toolLevel = 2;
hatChet.register();

val meatStew as ItemFood = VanillaFactory.createItemFood("meatstew",3);
meatStew.onItemFoodEaten = function(stack, world, player) {
        if (!world.remote) {
            player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(30, 1));
            player.sendChat("是不是吃错了什么东西");
            Commands.call("give @p minecraft:bowl 1", player, world);
        }
    };
meatStew.creativeTab = <creativetab:AnnalsItems>;
meatStew.register();

val netherStew as ItemFood = VanillaFactory.createItemFood("netherstew",6);
netherStew.onItemFoodEaten = function(stack, world, player) {
        if (!world.remote) {
            player.addPotionEffect(<potion:minecraft:unluck>.makePotionEffect(600, 1));
        }
    };
netherStew.creativeTab = <creativetab:AnnalsItems>;
netherStew.register();

val coolliquid as Fluid = VanillaFactory.createFluid("coolliquid", 0x6A5ACD);
coolliquid.density=1000;
coolliquid.luminosity=1;
coolliquid.temperature=300;
coolliquid.vaporize=false;
coolliquid.stillLocation="base:fluids/liquid";
coolliquid.flowingLocation="base:fluids/liquid_flow";
coolliquid.material=<blockmaterial:water>;
coolliquid.register();

val key as Item = VanillaFactory.createItem("key");
key.creativeTab = <creativetab:AnnalsItems>;
key.maxStackSize = 1;
key.register();

//普通物品
val anythingsNormal as string[]=["workpb","hunl2","youyihj"];
function thingsReg(things as string){
    var sub as Item = VanillaFactory.createItem(things);
    sub.creativeTab = <creativetab:AnnalsItems>;
    sub.maxStackSize = 64;
    sub.register();

}
for things in anythingsNormal{
    thingsReg(things);
}

//奥法珍珠
val pearlsColor as string[]=["red","blue","yellow","green","orange","purple"];
function pearls(color as string){
    var sub as Item = VanillaFactory.createItem("pearl_"~color);
    sub.creativeTab = <creativetab:AnnalsItems>;
    sub.maxStackSize = 64;
    sub.register();

}
for color in pearlsColor{
    pearls(color);
}