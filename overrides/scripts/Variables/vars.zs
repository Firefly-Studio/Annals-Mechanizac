#priority 10
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
//合金炉
global aingotOre as IOreDictEntry[int] = {
    1:<ore:ingotCopper>,
    2:<ore:ingotTitanium>,
    3:<ore:ingotIridium>,
    4:<ore:dustRedstone>,
    5:<ore:alloyAdvanced>,
    6:<ore:alloyElite>,
    7:<ore:itemCoal>

};
global aingotOres as IOreDictEntry[int] = {
    1:<ore:ingotTin>,
    2:<ore:ingotAluminum>,
    3:<ore:ingotTitanium>,
    4:<ore:ingotIron>,
    5:<ore:gemDiamond>,
    6:<ore:obsidian>,
    7:<ore:ingotIron>

};
global alloyOres as IOreDictEntry[int] = {
    1:<ore:ingotBronze>,
    2:<ore:ingotTitaniumAluminide>,
    3:<ore:ingotTitaniumIridium>,
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
    6:<ore:dustTitanium>,
    7:<ore:dustIridium>,
    8:<ore:blockGlowstone>,
    9:<ore:ingotIron>,
    10:<ore:sand>
};
global bingotOres as IOreDictEntry[int] = {
    1:<ore:ingotGold>,
    2:<ore:ingotIron>,
    3:<ore:ingotOsmium>,
    4:<ore:ingotCopper>,
    5:<ore:ingotTin>,
    6:<ore:ingotTitanium>,
    7:<ore:ingotIridium>,
    8:<ore:ingotRefinedGlowstone>,
    9:<ore:ingotSteel>,
    10:<ore:ingotSilicon>
};

//粉碎机*
global mblockOres as IOreDictEntry[int] = {
    1:<ore:oreGold>,
    2:<ore:oreIron>,
    3:<ore:oreCoal>,
    4:<ore:oreLapis>,
    5:<ore:oreDiamond>,
    6:<ore:oreRedstone>,
    7:<ore:oreQuartz>,
    8:<ore:oreEmerald>,
    9:<ore:oreAmethyst>,
    10:<ore:oreRuby>,
    11:<ore:orePeridot>,
    12:<ore:oreTopaz>,
    13:<ore:oreTanzanite>,
    14:<ore:oreMalachite>,
    15:<ore:oreSapphire>,
    16:<ore:oreAmber>,
    17:<ore:oreOsmium>,
    18:<ore:oreCopper>,
    19:<ore:oreTin>,
    20:<ore:oreDilithium>,
    21:<ore:oreTitanium>,
    22:<ore:oreIridium>,
    23:<ore:obsidian>,
    24:<ore:blockBone>,
    25:<ore:gemDiamond>,
    26:<ore:oreQuartz>
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
    9:<ore:gemAmethyst>,
    10:<ore:gemRuby>,
    11:<ore:gemPeridot>,
    12:<ore:gemTopaz>,
    13:<ore:gemTanzanite>,
    14:<ore:gemMalachite>,
    15:<ore:gemSapphire>,
    16:<ore:gemAmber>,
    17:<ore:dustOsmium>,
    18:<ore:dustCopper>,
    19:<ore:dustTin>,
    20:<ore:dustDilithium>,
    21:<ore:dustTitanium>,
    22:<ore:dustIridium>,
    23:<ore:dustObsidian>,
    24:<ore:dyeWhite>,
    25:<ore:dustDiamond>,
    26:<ore:dustQuartz>
};

//分离机
global sblockOres as IOreDictEntry[int] = {
    1:<ore:oreIron>,
    2:<ore:oreTin>,
    3:<ore:gravel>,
    4:<ore:oreLapis>
};
global sdustOre as IOreDictEntry[int] = {
    1:<ore:dustIron>,
    2:<ore:dustTin>,
    3:<ore:itemFlint>,
    4:<ore:gemLapis>
};
global sdustOres as IOreDictEntry[int] = {
    1:<ore:dustOsmium>,
    2:<ore:dustAluminum>,
    3:<ore:oreCertusQuartz>,
    4:<ore:dustLithium>
};
