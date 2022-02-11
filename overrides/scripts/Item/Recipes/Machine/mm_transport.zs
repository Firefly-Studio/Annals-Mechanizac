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
var defaultLiquid as ILiquidStack[] = [<liquid:liquidhydrogen>];
var defaultAura as string[int][] = [{1:"nether"},{1:"nether"},{1:"nether"},{1:"nether"},{1:"nether"}];

//----------数据存储-----------
var inp as IOreDictEntry[][]= [
    [<ore:ingotIron>],
    [<ore:ingotGold>],
    [<ore:gemDiamond>],
    [<ore:gemEmerald>],
    [<ore:obsidian>]
];
var out as IItemStack[][]= [
    [<minecraft:iron_ingot>],
    [<minecraft:gold_ingot>],
    [<minecraft:diamond>],
    [<minecraft:emerald>],
    [<appliedenergistics2:sky_stone_block>]
];

var RF as int[]= [50,50,500,500,120];
//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 5{
    var r1 = MachineUtil.buildMachine("e2a"~i , "transport", 600) as RecipePrimer;
    MachineUtil.inputResister(r1, true, true, true, false, RF[i],inp[i],1, defaultAura[i], defaultLiquid,0) as RecipePrimer;
    MachineUtil.outputResister(r1, false, true, false, false, false,0, out[i],1, 0,defaultAura[i], defaultLiquid,0) as RecipePrimer;
    r1.build();
}
