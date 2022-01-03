#priority 1
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;

static alloyIn as IOreDictEntry[IOreDictEntry] = {
    <ore:ingotTin>:<ore:ingotCopper>,
    <ore:ingotAluminum>:<ore:ingotTitanium>,
    <ore:ingotTitanium>:<ore:ingotIridium>,
    <ore:ingotIron>:<ore:dustRedstone>,
    <ore:gemDiamond>:<ore:alloyAdvanced>,
    <ore:obsidian>:<ore:alloyElite>,
    <ore:ingotIron>:<ore:itemCoal>
};
static alloyOut as IOreDictEntry[int] = {
    1:<ore:ingotBronze>,
    2:<ore:ingotTitaniumAluminide>,
    3:<ore:ingotTitaniumIridium>,
    4:<ore:alloyAdvanced>,
    5:<ore:alloyElite>,
    6:<ore:alloyUltimate>,
    7:<ore:enrichedIron>
};

static alloyString as string[int] = {
    1:"Bronze",
    2:"TitaniumAluminide",
    3:"TitaniumIridium",
    4:"alloyAdvanced",
    5:"alloyElite",
    6:"alloyUltimate",
    7:"enrichedIron"
};
function alloyFur(output as IOreDictEntry,inone as IOreDictEntry,intwo as IOreDictEntry,name as string){
    mods.modularmachinery.RecipeBuilder.newBuilder("alloy_furnace_"+name, "alloy_furnace", 500)
        .addEnergyPerTickInput(30)
        .addItemInput(inone,2)
        .addItemInput(intwo,2)
        .addItemOutput(output,4)
        .build();
}
var i=1;
for inone,intwo in alloyIn{
    alloyFur(alloyOut[i],inone,intwo,alloyString[i]);
}