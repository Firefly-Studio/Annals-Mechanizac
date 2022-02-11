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
var out as IItemStack[][]= [
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:horse"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:llama"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mooshroom"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ocelot"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:rabbit"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}})],
    [<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"}})]
];
var inp as IOreDictEntry[][]= [
    [<ore:itemCoal>],
    [<ore:itemCharcoal>],
    [<ore:gemDiamond>],
    [<ore:ingotIron>],
    [<ore:ingotGold>],
    [<ore:ingotOsmium>],
    [<ore:ingotSteel>],
    [<ore:ingotCopper>],
    [<ore:ingotRefinedObsidian>],
    [<ore:ingotTin>]
];
var aurain as string[int][] = [
    {1:"nether"},
    {1:"end"},
    {1:"overworld"}
];
//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 10{
    for j in 0 .. 3{
        var r1 = MachineUtil.buildMachine("s2m"~i~"s"~j , "mobaltar", 600) as RecipePrimer;
        MachineUtil.inputResister(r1, true, true, true, true, 60, inp[i],1, aurain[j], defaultLiquid,100) as RecipePrimer;
        MachineUtil.outputResister(r1, false, true, false, false, false,0, out[i],1, 0,defaultAura, defaultLiquid,0) as RecipePrimer;
        r1.build();
    }
}
