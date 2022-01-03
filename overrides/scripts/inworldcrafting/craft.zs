#priority 1
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
mods.inworldcrafting.FluidToFluid.transform(<liquid:coolliquid>, <liquid:lava>, [<ore:colder>]);
mods.inworldcrafting.FluidToItem.transform(<minecraft:iron_ingot>, <liquid:coolliquid>, [<ore:dustIron>], false);

val fireC as IOreDictEntry[IItemStack]={
    <minecraft:cobblestone>:<ore:netherrack>,
    <minecraft:stone>:<ore:cobblestone>,
    <minecraft:gold_ingot>:<ore:oreGold>,
    <mekanism:ingot:5>:<ore:oreCopper>,
    <mekanism:ingot:4>:<ore:ingotIron>
};
function fireCFunc(output as IItemStack,input as IOreDictEntry){
    mods.inworldcrafting.FireCrafting.addRecipe(output,input,600);
}
for output,input in fireC{
    fireCFunc(output,input);
}