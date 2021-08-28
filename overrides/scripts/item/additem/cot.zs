#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Commands;
import mods.contenttweaker.Fluid;
val fragmentsStone as Item = VanillaFactory.createItem("fragmentsstone");
fragmentsStone.creativeTab = <creativetab:misc>;
fragmentsStone.maxStackSize = 64;
fragmentsStone.register();

val hatChet as Item = VanillaFactory.createItem("hatchet");
hatChet.creativeTab = <creativetab:tools>;
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
meatStew.creativeTab = <creativetab:food>;
meatStew.register();

val netherStew as ItemFood = VanillaFactory.createItemFood("netherstew",6);
netherStew.onItemFoodEaten = function(stack, world, player) {
    if (!world.remote) {
        player.addPotionEffect(<potion:minecraft:unluck>.makePotionEffect(600, 1));
    }
};
netherStew.creativeTab = <creativetab:food>;
netherStew.register();

val liquidIron as Fluid = VanillaFactory.createFluid("liquidiron", 0xFF6666);
liquidIron.density=4000;
liquidIron.luminosity=4;
liquidIron.temperature=1200;
liquidIron.stillLocation="base:fluids/molten";
liquidIron.flowingLocation="base:fluids/molten_flowing";
liquidIron.material=<blockmaterial:lava>;
liquidIron.register();

val key as Item = VanillaFactory.createItem("key");
key.creativeTab = <creativetab:misc>;
key.maxStackSize = 1;
key.register();