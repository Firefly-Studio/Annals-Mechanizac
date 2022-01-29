import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;

val furdeletes as IIngredient[]=[
    <ore:ingotGold>,
    <ore:ingotIron>,
    <ore:ingotOsmium>,
    <ore:ingotCopper>,
    <ore:ingotTin>,
    <ore:itemSilicon>,
    <ore:ingotTitanium>,
    <ore:ingotTitaniumAluminide>,
    <ore:ingotTitaniumIridium>,
    <ore:ingotAluminum>,
    <ore:ingotIridium>,
    <ore:ingotSilver>,
    <ore:ingotLead>,
    <ore:ingotNickel>,
    <ore:ingotPlatinum>,
    <ore:ingotZinc>,
    <ore:ingotSteel>
];

//for item in furdeletes{
//    furnace.remove(item);
//}
mods.mekanism.chemical.crystallizer.removeAllRecipes();
mods.mekanism.chemical.dissolution.removeAllRecipes();
mods.mekanism.chemical.infuser.removeAllRecipes();
mods.mekanism.chemical.injection.removeAllRecipes();
mods.mekanism.chemical.oxidizer.removeAllRecipes();
mods.mekanism.chemical.washer.removeAllRecipes();
mods.mekanism.combiner.removeAllRecipes();
mods.mekanism.crusher.removeAllRecipes();
mods.mekanism.separator.removeAllRecipes();
mods.mekanism.smelter.removeAllRecipes();
mods.mekanism.enrichment.removeAllRecipes();
mods.mekanism.infuser.removeAllRecipes();
mods.mekanism.compressor.removeAllRecipes();
mods.mekanism.sawmill.removeAllRecipes();
mods.mekanism.reaction.removeAllRecipes();
mods.mekanism.purification.removeAllRecipes();
mods.mekanism.solarneutronactivator.removeAllRecipes();
mods.mekanism.thermalevaporation.removeAllRecipes();

//recipes.remove(<natura:overworld_workbenches:*>);
//recipes.remove(<natura:nether_workbenches:*>);
recipes.remove(<betternether:cincinnasite_block>);
recipes.remove(<naturesaura:gold_powder>);
recipes.remove(<modularmachinery:blockcasing:4>);
recipes.remove(<xnet:netcable>);