#priority 114514
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.liquid.ILiquidStack;
import scripts.Classes.MachineUtil.MachineUtil;
import mods.ctutils.utils.Math;

val MachineUtil as MachineUtil = MachineUtil("Instanced");

//-----------机械默认表---------------
//设置默认值
var defaultOre as IOreDictEntry[] = [<ore:alloyAdvanced>];
var defaultItem as IItemStack[] = [<minecraft:dirt>];
var defaultLiquid as ILiquidStack[] = [<liquid:liquidoxygen>];
var defaultAura as string[int] = {1:"nether"};


//----------数据存储-----------
var inp as IOreDictEntry[][]= [
    [<ore:auraStone>]
];

//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------

var pri=1886000;
for i in 1 .. 65{
    for j in 0 .. 480{
        var r1 = MachineUtil.buildMachine("exp"~i~"s"~j , "explore", 100+600*Math.sqrt(Math.sqrt(j)),pri) as RecipePrimer;
        MachineUtil.inputResister(r1, false, true, false, true, 0, [<ore:stone>],i, defaultAura, defaultLiquid,j) as RecipePrimer;
        MachineUtil.outputResister(r1, true, false, false, false, false,(-0.95*(i - 34)*(i - 34)+1111)*Math.sin(i)*(Math.cos(j)*Math.cos(j)+0.5)*9,defaultItem,1,0, defaultAura, defaultLiquid,0) as RecipePrimer;
        r1.build();
        pri-=1;
    }
}
