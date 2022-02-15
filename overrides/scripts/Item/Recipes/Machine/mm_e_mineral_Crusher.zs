#priority 114514
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.liquid.ILiquidStack;
import scripts.Classes.MachineUtil.MachineUtil;

val MachineUtil as MachineUtil = MachineUtil("Instanced");

//-----------机械默认表---------------
//设置默认值
var defaultOre as IOreDictEntry[] = [<ore:alloyAdvanced>];
var defaultItem as IItemStack[] = [<minecraft:dirt>];
var defaultLiquid as ILiquidStack[] = [<liquid:lava>];
var defaultAura as string[int] = {1:"nether"};


//----------数据存储-----------
var out as IItemStack[][]= [
    [<mekanism:dust:2>],
    [<mekanism:dust>],
    [<minecraft:coal>],
    [<minecraft:dye:4>],
    [<minecraft:diamond>],
    [<minecraft:redstone>],
    [<minecraft:emerald>],
    [<minecraft:dye:15>],
    [<minecraft:prismarine_crystals>],
    [<gb:glob>],
    [<gb:glob2>],
    [<gb:glob3>],
    [<mekanism:dust:2>],
    [<mekanism:dust:3>],
    [<mekanism:dust:4>],
    [<mekanism:otherdust:6>],
    [<mekanism:otherdust>],
    [<appliedenergistics2:material:3>],
    [<mekanism:otherdust:3>],
    [<appliedenergistics2:material:2>],
    [<appliedenergistics2:material:8>],
];
var inp as IOreDictEntry[][]= [
    [<ore:oreGold>],
    [<ore:oreIron>],
    [<ore:oreCoal>],
    [<ore:oreLapis>],
    [<ore:oreDiamond>],
    [<ore:oreRedstone>],
    [<ore:oreEmerald>],
    [<ore:blockBone>],
    [<ore:gemPrismarine>],
    [<ore:oreGobber>],
    [<ore:oreGobberNether>],
    [<ore:oreGobberEnd>],
    [<ore:oreOsmium>],
    [<ore:oreCopper>],
    [<ore:oreTin>],
    [<ore:obsidian>],
    [<ore:gemDiamond>],
    [<ore:oreQuartz>],
    [<ore:netherrack>],
    [<ore:crystalCertusQuartz>],
    [<ore:crystalFluix>],
];

//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 21{
    var r1 = MachineUtil.buildMachine("crue"~i , "e_mineral_crusher", 60) as RecipePrimer;
    MachineUtil.inputResister(r1, true, true, false, false, 15, inp[i],1, defaultAura, defaultLiquid,0) as RecipePrimer;
    MachineUtil.outputResister(r1, false, true, false, false,false, 0, out[i],2,0,defaultAura, defaultLiquid,0) as RecipePrimer;
    r1.build();
}
