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
var defaultLiquid as ILiquidStack[] = [<liquid:anti_venom>];
var defaultAura as string[int] = {1:"nether"};


//----------数据存储-----------
var out as IItemStack[][]= [
    [<naturesaura:infused_stone>],
    [<naturesaura:infused_iron_block>],
    [<naturesaura:infused_iron>],
    [<minecraft:prismarine_shard>],
    [<naturesaura:birth_spirit>],
    [<ebwizardry:magic_crystal>],
    [<minecraft:dragon_breath>],
    [<modularcontroller:explore_controller>],
    [<hammercore:emerald_bordered_cobblestone>]
];
var inp as IOreDictEntry[][]= [
    [<ore:stone>],
    [<ore:blockIron>],
    [<ore:ingotIron>],
    [<ore:gemQuartz>],
    [<ore:treeLeaves>],
    [<ore:crystalPureFluix>],
    [<ore:auraBottle>,<ore:dustObsidian>],
    [<ore:eyesGlass>,<ore:emeraldCobble>,<ore:aofePearls>],
    [<ore:blockEmerald>,<ore:auraStone>]
];
var aurain as string[int][] = [
    {1:"nether"},
    {1:"end"},
    {1:"overworld"}
];
//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 9{
    for j in 0 .. 3{
        var r1 = MachineUtil.buildMachine("a2s"~i~"s"~j , "altar", 400) as RecipePrimer;
        MachineUtil.inputResister(r1, false, true, true, false, 0, inp[i],1, aurain[j], defaultLiquid,0) as RecipePrimer;
        MachineUtil.outputResister(r1, false, true, false, false, false,0, out[i],1,0, defaultAura, defaultLiquid,0) as RecipePrimer;
        r1.build();
    }
}
