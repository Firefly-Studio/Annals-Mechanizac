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
    13:<ore:blockCoal>,
    14:<ore:oreCopper>,
    15:<ore:oreTin>,
    16:<ore:blockRedstone>,
    17:<ore:blockDiamond>,
    18:<ore:blockRefinedObsidian>,
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
    13:<ore:itemCompressedCarbon>,
    14:<ore:ingotCopper>,
    15:<ore:ingotTin>,
    16:<ore:itemCompressedRedstone>,
    17:<ore:itemCompressedDiamond>,
    18:<ore:itemCompressedObsidian>,
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
    8:<ore:oreEmerald>,
    9:<ore:blockBone>,
    11:<ore:gemPrismarine>,
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
    8:<ore:gemEmerald>,
    9:<ore:dyeWhite>,
    11:<ore:dustPrismarine>,
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
    5:<ore:blockCoal>,
    6:<ore:oreDiamond>,
    7:<ore:oreGobber>,
    8:<ore:oreGobberNether>
};
global sdustOre as IOreDictEntry[int] = {
    1:<ore:dustIron>,
    2:<ore:dustTin>,
    3:<ore:itemFlint>,
    4:<ore:gemLapis>,
    5:<ore:itemCoal>,
    6:<ore:oreDiamond>,
    7:<ore:oreGobber>,
    8:<ore:oreGobberNether>
};
global sdustOres as IOreDictEntry[int] = {
    1:<ore:dustOsmium>,
    2:<ore:dustCopper>,
    3:<ore:oreCertusQuartz>,
    4:<ore:dustLithium>,
    5:<ore:graphite>,
    6:<ore:oreGobber>,
    7:<ore:oreGobberNether>,
    8:<ore:oreGobberEnd>
};
