#priority 1
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;

val f2i as IIngredient[][IItemStack]={
    <minecraft:dirt>:[<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),<ore:itemClay>,<ore:dustSulfur>*8,<ore:sugarcane>*4],
    <minecraft:string>:[<ore:paper>,<ore:fiber>],
    <minecraft:reeds>:[<betternether:nether_reed>,<ore:fiber>],
    <t3s4ebw:magic_seed>:[<minecraft:dye:15>,<minecraft:wheat_seeds>,<ebwizardry:magic_crystal>],
    <contenttweaker:lle>:[<minecraft:bone>,<minecraft:rotten_flesh>,<ore:auraStone>]
};
function f2Item(output as IItemStack,input as IIngredient[]){
    mods.inworldcrafting.FluidToItem.transform(output,<liquid:coolliquid>,input, false);
}
for output,input in f2i{
    f2Item(output,input);
}

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

mods.inworldcrafting.FluidToFluid.transform(<liquid:coolliquid>, <liquid:lava>, [<ore:colder>]);
mods.inworldcrafting.FireCrafting.addRecipe(<contenttweaker:youyihj>,<patchouli:guide_book>.withTag({"patchouli:book": "patchouli:help"}),114514);

//防止火烧
val unfireC as IIngredient[IItemStack]={
    <contenttweaker:youyihj>:<contenttweaker:pearl_yellow>,
    <contenttweaker:youyihj>:<contenttweaker:pearl_green>,
    <contenttweaker:youyihj>:<contenttweaker:pearl_red>,
    <contenttweaker:youyihj>:<contenttweaker:pearl_blue>,
    <contenttweaker:youyihj>:<contenttweaker:pearl_orange>,
    <contenttweaker:youyihj>:<contenttweaker:pearl_purple>
};
function unfireCFunc(output as IItemStack,input as IIngredient){
    mods.inworldcrafting.FireCrafting.addRecipe(output,input,114514);
}
for output,input in unfireC{
    unfireCFunc(output,input);
}