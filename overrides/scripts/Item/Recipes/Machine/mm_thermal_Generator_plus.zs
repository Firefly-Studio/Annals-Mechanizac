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
var defaultAura as string[int] = {1:"nether"};

//----------数据存储-----------
var inp as IOreDictEntry[][]= [
    [<ore:itemCoal>],
    [<ore:itemCharcoal>],
    [<ore:gemDiamond>],
    [<ore:firedMeat>],
    [<ore:itemGrass>],
    [<ore:bucketLava>]

];
var tick as int[]= [400,400,1000,1200,3276777,10000];
var RF as int[]= [450,400,1000,1400,100000,200];
//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 6{
    var r1 = MachineUtil.buildMachine("s2ep"~i , "s_power_machine", tick[i]) as RecipePrimer;
    MachineUtil.inputResister(r1, false, true, true, false, 0, inp[i],1, defaultAura, defaultLiquid,0) as RecipePrimer;
    MachineUtil.outputResister(r1, true, false, false, false, false,RF[i], defaultItem,1, 0,defaultAura, defaultLiquid,0) as RecipePrimer;
    r1.build();
}

RecipeBuilder.newBuilder("s_powermachine_lava_liquid", "s_power_machine", 1000)
    .addEnergyPerTickOutput(200)
    .addFluidInput(<liquid:lava>*100)
    .build();