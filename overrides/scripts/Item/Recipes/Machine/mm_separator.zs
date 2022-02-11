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
    [<mekanism:dust>,<mekanism:dust:2>],
    [<mekanism:dust:3>,<mekanism:dust:4>],
    [<minecraft:flint>,<appliedenergistics2:material>],
    [<minecraft:dye:4>,<mekanism:otherdust:4>],
    [<minecraft:coal>,<mw:graphitechunk>],
    [<minecraft:diamond>,<gb:gobber_ore>],
    [<gb:gobber_ore>,<gb:gobber_ore2>],
    [<gb:gobber_ore2>,<gb:gobber_ore3>],
    [<mekanism:crystal:1>],
    [<mekanism:crystal>],
    [<mekanism:crystal:2>],
    [<mekanism:crystal:3>],
    [<mekanism:crystal:4>]

];
var inp as IOreDictEntry[][]= [
    [<ore:oreIron>],
    [<ore:oreTin>],
    [<ore:gravel>],
    [<ore:oreLapis>],
    [<ore:blockCoal>],
    [<ore:oreDiamond>],
    [<ore:oreGobber>],
    [<ore:oreGobberNether>],
    [<ore:crystalGold>],
    [<ore:crystalIron>],
    [<ore:crystalOsmium>],
    [<ore:crystalCopper>],
    [<ore:crystalTin>]
];

//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 13{
    if(i>=9) {
        var r1 = MachineUtil.buildMachine("sep"~i , "separator", 720) as RecipePrimer;
        MachineUtil.inputResister(r1, true, true, false, false, 25, inp[i],5, defaultAura, defaultLiquid,0) as RecipePrimer;
        MachineUtil.outputResister(r1, false, true, false, false,true, 0, out[i],8, 0.65,defaultAura, defaultLiquid,0) as RecipePrimer;
        //r1.addItemInput(out[i][0]).setChance(0.5); 已被几率参数替代
        r1.build();
    }else{
        var r1 = MachineUtil.buildMachine("sep"~i , "separator", 700) as RecipePrimer;
        MachineUtil.inputResister(r1, true, true, false, false, 25, inp[i],16, defaultAura, defaultLiquid,0) as RecipePrimer;
        MachineUtil.outputResister(r1, false, true, false, false, false,0, out[i],8, 0,defaultAura, defaultLiquid,0) as RecipePrimer;
        r1.build();
    }
}

