import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.advancedmortars.Mortar;
import crafttweaker.item.IIngredient;
var makeitemsdust as IIngredient[IItemStack]={
    <mekanism:dust>*2:<ore:oreIron>,
    <appliedenergistics2:material:3>*2:<ore:gemQuartz>,
    <mekanism:dust:1>*2:<ore:oreGold>,
    <appliedenergistics2:material:2>*2:<ore:crystalCertusQuartz>,
    <appliedenergistics2:material:8>*2:<ore:crystalFluix>,
    <mekanism:dust:3>*2:<ore:oreCopper>,
    <appliedenergistics2:material:46>*2:<ore:enderpearl>,
    <naturesaura:gold_powder>*4:<naturesaura:gold_leaf>,
    <minecraft:dye:15>*3:<minecraft:bone>,
    <minecraft:bone>*9:<minecraft:bone_block>,
    <minecraft:bone_block>*9:<betternether:bone_block>,
    <mekanism:dust:4>*2:<ore:oreTin>
};
function addRecipeM(output as IItemStack,input as IIngredient){
    Mortar.addRecipe(["stone", "iron", "diamond","emerald"],output,16,[input]);
}
for output,input in makeitemsdust{
    addRecipeM(output,input);
}


var mixit as IIngredient[][IItemStack]={
    <minecraft:dye:7>*2:[<ore:dyeBlack>,<ore:dyeWhite>],
    <minecraft:dye:8>*2:[<ore:dyeBlack>,<ore:dyeWhite>*2],
    <minecraft:dye:12>*2:[<ore:dyeBlue>, <ore:dyeWhite>],
    <minecraft:dye:5>*2:[<ore:dyeRed>, <ore:dyeBlue>],
    <minecraft:dye:9>*2:[<ore:dyeRed>, <ore:dyeWhite>],
    <minecraft:dye:6>*2:[<ore:dyeGreen>, <ore:dyeBlue>],
    <minecraft:dye:10>*2:[<ore:dyeGreen>, <ore:dyeWhite>],
    <minecraft:dye:13>*2:[<ore:dyePurple>, <ore:dyePink>]
};
function addRecipeMix(output as IItemStack,input as IIngredient[]){
    Mortar.addRecipe(["wood","stone","iron","diamond","emerald"],output,4,input);
}
for output,input in mixit{
    addRecipeMix(output,input);
}
