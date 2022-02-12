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
var inp as IOreDictEntry[][]= [
    [<ore:dustGold>],
    [<ore:dustIron>],
    [<ore:dustOsmium>],
    [<ore:dustCopper>],
    [<ore:dustTin>],
    [<ore:blockGlowstone>],
    [<ore:ingotIron>],
    [<ore:sand>],
    [<ore:oreGold>],
    [<ore:oreIron>],
    [<ore:blockCoal>],
    [<ore:oreCopper>],
    [<ore:oreTin>],
    [<ore:blockRedstone>],
    [<ore:blockDiamond>],
    [<ore:blockRefinedObsidian>],
    [<ore:oreOsmium>]

];
var out as IItemStack[][]=[
    [<minecraft:gold_ingot>],
    [<minecraft:iron_ingot>],
    [<mekanism:ingot:1>],
    [<mekanism:ingot:5>],
    [<mekanism:ingot:6>],
    [<mekanism:ingot:3>],
    [<mekanism:ingot:4>],
    [<appliedenergistics2:material:5>],
    [<minecraft:gold_ingot>],
    [<minecraft:iron_ingot>],
    [<mekanism:compressedcarbon>],
    [<mekanism:ingot:5>],
    [<mekanism:ingot:6>],
    [<mekanism:compressedredstone>],
    [<mekanism:compresseddiamond>],
    [<mekanism:compressedobsidian>],
    [<mekanism:ingot:1>]

];
//put(RP名,能量*,物品*,灵气*,流体*,能量数值,物品[],物品数值,灵气Map,流体[],流体数值)
//---------遍历添加-----------
for i in 0 .. 17{
    var r1 = MachineUtil.buildMachine("blaj"~i , "blastFurnace", 500,2) as RecipePrimer;
    MachineUtil.inputResister(r1, true, true, false, true, 30, inp[i],1, defaultAura, defaultLiquid,50) as RecipePrimer;
    MachineUtil.outputResister(r1, false, true, false, false,false, 0, out[i],1,0, defaultAura, defaultLiquid,0) as RecipePrimer;
    r1.build();
    var r2 = MachineUtil.buildMachine("blap"~i , "blastFurnacePlus", 120,2) as RecipePrimer;
    MachineUtil.inputResister(r2, true, true, false, true, 30, inp[i],1, defaultAura, defaultLiquid,100) as RecipePrimer;
    MachineUtil.outputResister(r2, false, true, false, false,false, 0, out[i],1,0, defaultAura, defaultLiquid,0) as RecipePrimer;
    r2.build();
}
var cytOres as IOreDictEntry[int] = {
    1:<ore:dustGold>,
    2:<ore:dustIron>,
    3:<ore:dustOsmium>,
    4:<ore:dustCopper>,
    5:<ore:dustTin>
};
var cyOres as IOreDictEntry[int] = {
    1:<ore:crystalGold>,
    2:<ore:crystalIron>,
    3:<ore:crystalOsmium>,
    4:<ore:crystalCopper>,
    5:<ore:crystalTin>
};
var i=1;
//晶体
for key,dore in cytOres{
    for keyy,iore in cyOres{
        if (key == keyy) {
            mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_plus_"~i, "blastFurnacePlus", 120, 1)
            .addEnergyPerTickInput(90)
            .addFluidInput(<liquid:liquidoxygen>*25)
            .addItemInput(dore)
            .addItemOutput(iore)
            .build();
            i+=1;
            break;
        }
    }
}