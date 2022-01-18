#priority 10
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
//合金炉
//所有机械我都试过用Func写，但是写完后机械的配方总是乱的，问了很多大佬都没招，然后就只能3个for用map匹配了。
global aingotOre as IOreDictEntry[int] = {
    1:<ore:ingotCopper>,
    4:<ore:dustRedstone>,
    5:<ore:alloyAdvanced>,
    6:<ore:alloyElite>,
    7:<ore:itemCoal>,

};
global aingotOres as IOreDictEntry[int] = {
    1:<ore:ingotTin>,
    4:<ore:ingotIron>,
    5:<ore:gemDiamond>,
    6:<ore:obsidian>,
    7:<ore:ingotIron>

};
global alloyOres as IOreDictEntry[int] = {
    1:<ore:ingotBronze>,
    4:<ore:alloyAdvanced>,
    5:<ore:alloyElite>,
    6:<ore:alloyUltimate>,
    7:<ore:enrichedIron>
};


//高炉
global bdustOres as IOreDictEntry[int] = {
    1:<ore:dustGold>,
    2:<ore:dustIron>,
    3:<ore:dustOsmium>,
    4:<ore:dustCopper>,
    5:<ore:dustTin>,
    8:<ore:blockGlowstone>,
    9:<ore:ingotIron>,
    10:<ore:sand>,
    11:<ore:oreGold>,
    12:<ore:oreIron>,
    14:<ore:oreCopper>,
    15:<ore:oreTin>,
    23:<ore:oreOsmium>
};
global bingotOres as IOreDictEntry[int] = {
    1:<ore:ingotGold>,
    2:<ore:ingotIron>,
    3:<ore:ingotOsmium>,
    4:<ore:ingotCopper>,
    5:<ore:ingotTin>,
    8:<ore:ingotRefinedGlowstone>,
    9:<ore:ingotSteel>,
    10:<ore:itemSilicon>,
    11:<ore:ingotGold>,
    12:<ore:ingotIron>,
    14:<ore:ingotCopper>,
    15:<ore:ingotTin>,
    23:<ore:ingotOsmium>
};

//粉碎机*
global mblockOres as IOreDictEntry[int] = {
    1:<ore:oreGold>,
    2:<ore:oreIron>,
    3:<ore:oreCoal>,
    4:<ore:oreLapis>,
    5:<ore:oreDiamond>,
    6:<ore:oreRedstone>,
    7:<ore:gemQuartz>,
    8:<ore:oreEmerald>,
    9:<ore:blockBone>,
    17:<ore:oreOsmium>,
    18:<ore:oreCopper>,
    19:<ore:oreTin>,
    23:<ore:obsidian>,
    24:<ore:blockBone>,
    25:<ore:gemDiamond>,
    26:<ore:oreQuartz>,
    27:<ore:netherrack>,
    28:<ore:crystalCertusQuartz>,
    29:<ore:crystalFluix>,
    30:<ore:ingotRefinedObsidian>
};
global mdustOres as IOreDictEntry[int] = {
    1:<ore:dustGold>,
    2:<ore:dustIron>,
    3:<ore:itemCoal>,
    4:<ore:gemLapis>,
    5:<ore:gemDiamond>,
    6:<ore:dustRedstone>,
    7:<ore:gemQuartz>,
    8:<ore:gemEmerald>,
    9:<ore:dyeWhite>,
    17:<ore:dustOsmium>,
    18:<ore:dustCopper>,
    19:<ore:dustTin>,
    23:<ore:dustObsidian>,
    24:<ore:dyeWhite>,
    25:<ore:dustDiamond>,
    26:<ore:dustQuartz>,
    27:<ore:dustSulfur>,
    28:<ore:dustCertusQuartz>,
    29:<ore:dustFluix>,
    30:<ore:dustRefinedObsidian>
};

//分离机
global sblockOres as IOreDictEntry[int] = {
    1:<ore:oreIron>,
    2:<ore:oreTin>,
    3:<ore:gravel>,
    4:<ore:oreLapis>,
    5:<ore:blockCoal>
};
global sdustOre as IOreDictEntry[int] = {
    1:<ore:dustIron>,
    2:<ore:dustTin>,
    3:<ore:itemFlint>,
    4:<ore:gemLapis>,
    5:<ore:itemCoal>
};
global sdustOres as IOreDictEntry[int] = {
    1:<ore:dustOsmium>,
    2:<ore:dustCopper>,
    3:<ore:oreCertusQuartz>,
    4:<ore:dustLithium>,
    5:<ore:graphite>
};

//模块化机械

global outputbus as IItemStack[IItemStack] ={
    <modularmachinery:blockoutputbus:0>:<modularmachinery:blockoutputbus:1>,
    <modularmachinery:blockoutputbus:1>:<modularmachinery:blockoutputbus:2>,
    <modularmachinery:blockoutputbus:2>:<modularmachinery:blockoutputbus:3>,
    <modularmachinery:blockoutputbus:3>:<modularmachinery:blockoutputbus:4>,
    <modularmachinery:blockoutputbus:4>:<modularmachinery:blockoutputbus:5>,
    <modularmachinery:blockoutputbus:5>:<modularmachinery:blockoutputbus:6>
};
global liquidinputbus as IItemStack[IItemStack] ={
    <modularmachinery:blockfluidinputhatch:0>:<modularmachinery:blockfluidinputhatch:1>,
    <modularmachinery:blockfluidinputhatch:1>:<modularmachinery:blockfluidinputhatch:2>,
    <modularmachinery:blockfluidinputhatch:2>:<modularmachinery:blockfluidinputhatch:3>,
    <modularmachinery:blockfluidinputhatch:3>:<modularmachinery:blockfluidinputhatch:4>,
    <modularmachinery:blockfluidinputhatch:4>:<modularmachinery:blockfluidinputhatch:5>,
    <modularmachinery:blockfluidinputhatch:5>:<modularmachinery:blockfluidinputhatch:6>,
    <modularmachinery:blockfluidinputhatch:6>:<modularmachinery:blockfluidinputhatch:7>
};
global liquidoutputbus as IItemStack[IItemStack] ={
    <modularmachinery:blockfluidoutputhatch:0>:<modularmachinery:blockfluidoutputhatch:1>,
    <modularmachinery:blockfluidoutputhatch:1>:<modularmachinery:blockfluidoutputhatch:2>,
    <modularmachinery:blockfluidoutputhatch:2>:<modularmachinery:blockfluidoutputhatch:3>,
    <modularmachinery:blockfluidoutputhatch:3>:<modularmachinery:blockfluidoutputhatch:4>,
    <modularmachinery:blockfluidoutputhatch:4>:<modularmachinery:blockfluidoutputhatch:5>,
    <modularmachinery:blockfluidoutputhatch:5>:<modularmachinery:blockfluidoutputhatch:6>,
    <modularmachinery:blockfluidoutputhatch:6>:<modularmachinery:blockfluidoutputhatch:7>
};
global energyinputbus as IItemStack[IItemStack] ={
    <modularmachinery:blockenergyinputhatch:0>:<modularmachinery:blockenergyinputhatch:1>,
    <modularmachinery:blockenergyinputhatch:1>:<modularmachinery:blockenergyinputhatch:2>,
    <modularmachinery:blockenergyinputhatch:2>:<modularmachinery:blockenergyinputhatch:3>,
    <modularmachinery:blockenergyinputhatch:3>:<modularmachinery:blockenergyinputhatch:4>,
    <modularmachinery:blockenergyinputhatch:4>:<modularmachinery:blockenergyinputhatch:5>,
    <modularmachinery:blockenergyinputhatch:5>:<modularmachinery:blockenergyinputhatch:6>,
    <modularmachinery:blockenergyinputhatch:6>:<modularmachinery:blockenergyinputhatch:7>
};
global energyoutputbus as IItemStack[IItemStack] ={
    <modularmachinery:blockenergyoutputhatch:0>:<modularmachinery:blockenergyoutputhatch:1>,
    <modularmachinery:blockenergyoutputhatch:1>:<modularmachinery:blockenergyoutputhatch:2>,
    <modularmachinery:blockenergyoutputhatch:2>:<modularmachinery:blockenergyoutputhatch:3>,
    <modularmachinery:blockenergyoutputhatch:3>:<modularmachinery:blockenergyoutputhatch:4>,
    <modularmachinery:blockenergyoutputhatch:4>:<modularmachinery:blockenergyoutputhatch:5>,
    <modularmachinery:blockenergyoutputhatch:5>:<modularmachinery:blockenergyoutputhatch:6>,
    <modularmachinery:blockenergyoutputhatch:6>:<modularmachinery:blockenergyoutputhatch:7>
};