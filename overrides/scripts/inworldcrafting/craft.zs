#priority 1
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
mods.inworldcrafting.FluidToFluid.transform(<liquid:coolliquid>, <liquid:lava>, [<ore:colder>]);
mods.inworldcrafting.FluidToItem.transform(<minecraft:dirt>, <liquid:coolliquid>, [<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),<ore:itemClay>,<ore:dustSulfur>*8,<ore:sugarcane>*4],true);
mods.inworldcrafting.FluidToItem.transform(<minecraft:iron_ingot>, <liquid:coolliquid>, [<ore:dustIron>], false);
mods.inworldcrafting.FluidToItem.transform(<minecraft:string>, <liquid:coolliquid>, [<ore:paper>,<ore:fiber>], false);
mods.inworldcrafting.FluidToItem.transform(<minecraft:reeds>, <liquid:coolliquid>, [<betternether:nether_reed>,<ore:fiber>], false);
mods.inworldcrafting.FireCrafting.addRecipe(<contenttweaker:youyihj>,<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:help"}),114514);
val fireC as IIngredient[IItemStack]={
    <minecraft:cobblestone>:<ore:netherrack>,
    <minecraft:stone>:<ore:cobblestone>,
    <minecraft:gold_ingot>:<ore:oreGold>,
    <mekanism:ingot:5>:<ore:oreCopper>,
    <mekanism:ingot:4>:<ore:ingotIron>
};
function fireCFunc(output as IItemStack,input as IIngredient){
    mods.inworldcrafting.FireCrafting.addRecipe(output,input,600);
}
for output,input in fireC{
    fireCFunc(output,input);
}

mods.plustweaks.Liquid.setInfinite(<liquid:coolliquid>, false);