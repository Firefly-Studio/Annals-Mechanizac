import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
//矿辞
<ore:blockGlass>.add(<natura:nether_glass:*>);
<ore:sand>.add(<natura:nether_tainted_soil:*>);
<ore:sand>.add(<minecraft:soul_sand>);
<ore:blockCactus>.add(<betternether:barrel_cactus>);
<ore:blockCactus>.add(<betternether:nether_cactus>);
<ore:enrichedIron>.add(<mekanism:enrichediron>);
<ore:blockBone>.add(<betternether:bone_block>);
<ore:blockGlowstone>.add(<minecraft:glowstone>);
<ore:colder>.addAll(<ore:sugarcane>);
<ore:colder>.add(<betternether:egg_plant>);
<ore:fiber>.add(<naturesaura:gold_fiber>);
<ore:graphite>.add(<mw:graphitechunk>);

//变量
val iIron = <ore:ingotIron>;
val imm = <modularmachinery:itemmodularium>;
val ccn = <betternether:cincinnasite_forged>;

//配方
val shapedMirroredRecipes as IIngredient[][][IItemStack] = {
    <contenttweaker:meatstew>:
    [
        [<biomesoplenty:fleshchunk>*2,<ore:bowlWood>]
    ],
    <minecraft:bucket>:
        [[ccn,null,ccn],
        [null,ccn,null]
    ],
    <modularmachinery:blockcasing:3>:
    [
        [null,imm,null],
        [imm,<ore:gearIron>,imm],
        [null,imm,null]
    ],
    <modularmachinery:blockcasing:1>:
    [
        [null,imm,null],
        [imm,<trapcraft:fan>,imm],
        [null,imm,null]
    ],
    <buildcraftcore:engine>:
    [
        [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
        [null,<ore:blockGlass>,null],
        [<ore:gearWood>,<ore:craftingPiston>,<ore:gearWood>]
    ],
    <buildcraftcore:engine:1>:
    [
        [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
        [null,<ore:blockGlass>,null],
        [<ore:gearStone>,<ore:craftingPiston>,<ore:gearStone>]
    ],
    <buildcraftcore:engine:2>:
    [
        [iIron,iIron,iIron],
        [null,<ore:blockGlass>,null],
        [<ore:gearIron>,<ore:craftingPiston>,<ore:gearIron>]
    ],
    <mekanism:controlcircuit>:
    [
        [<ore:dustRedstone>,<ore:ingotSteel>,<ore:dustRedstone>],
        [<ore:ingotSteel>,<ore:itemSilicon>,<ore:ingotSteel>],
        [<ore:dustRedstone>,<ore:ingotSteel>,<ore:dustRedstone>]
    ],
    <naturesaura:gold_fiber>:
    [
        [<ore:treeLeaves>,<ore:nuggetGold>,<ore:treeLeaves>],
        [<ore:nuggetGold>,<betternether:nether_grass>,<ore:nuggetGold>],
        [<ore:treeLeaves>,<ore:nuggetGold>,<ore:treeLeaves>]
    ],
    <modularcontroller:j_power_machine_controller>:
    [
        [null,<ore:gemDiamond>,null],
        [<ore:ingotIron>,<ore:circuitBasic>,<ore:ingotIron>],
        [<ore:ingotIron>,<modularmachinery:itemmodularium>,<ore:ingotIron>]
    ],
    <modularcontroller:s_power_machine_controller>:
    [
        [null,<ore:blockDiamond>,null],
        [<ore:ingotSteel>,<ore:circuitElite>,<ore:ingotSteel>],
        [<ore:ingotSteel>,<modularcontroller:j_power_machine_controller>,<ore:ingotSteel>]
    ],
    <modularcontroller:alloy_furnace_controller>:
    [
        [null,<minecraft:fire_charge>,null],
        [<modularmachinery:itemmodularium>,<ore:circuitBasic>,<modularmachinery:itemmodularium>],
        [<modularmachinery:itemmodularium>,<ore:dustRedstone>,<modularmachinery:itemmodularium>]
    ],
    <modularcontroller:separator_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [<modularmachinery:itemmodularium>,<ore:circuitAdvanced>,<modularmachinery:itemmodularium>],
        [<ore:ingotSteel>,<ore:dustRedstone>,<ore:ingotSteel>]
    ],
    <modularcontroller:j_mineral_crusher_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [<modularmachinery:itemmodularium>,<ore:circuitBasic>,<modularmachinery:itemmodularium>],
        [<ore:ingotSteel>,<ore:gearIron>,<ore:ingotSteel>]
    ],
    <modularcontroller:e_mineral_crusher_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [<modularmachinery:itemmodularium>,<ore:circuitElite>,<modularmachinery:itemmodularium>],
        [<ore:blockSteel>,<ore:gearDiamond>,<ore:blockSteel>]
    ],
    <modularcontroller:blastfurnace_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [<modularmachinery:itemmodularium>,<ore:circuitAdvanced>,<modularmachinery:itemmodularium>],
        [<modularmachinery:blockcasing:1>,null,<modularmachinery:blockcasing:1>]
    ],
    <modularcontroller:blastfurnaceplus_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [<naturesaura:infused_iron_block>,<ore:circuitAdvanced>,<naturesaura:infused_iron_block>],
        [<modularmachinery:blockcasing:1>,null,<modularmachinery:blockcasing:1>]
    ],
    <modularcontroller:transport_controller>:
    [
        [null,<modularmachinery:blockcasing:4>,null],
        [<naturesaura:ancient_log>,null,<naturesaura:ancient_log>],
        [null,<minecraft:glowstone>,null]
    ],
    <modularcontroller:altar_controller>:
    [
        [null,<modularmachinery:blockcasing:4>,null],
        [<naturesaura:gold_brick>,<natura:nether_leaves>,<naturesaura:gold_brick>],
        [<biomesoplenty:ash_block>,<biomesoplenty:ash_block>,<biomesoplenty:ash_block>]
    ],
    <modularmagic:blockauraproviderinput>:
    [
        [<naturesaura:gold_brick>,<ore:logWood>,<naturesaura:gold_brick>],
        [<ore:logWood>,<modularmachinery:blockcasing>,<ore:logWood>],
        [<naturesaura:gold_brick>,<ore:logWood>,<naturesaura:gold_brick>]
    ],
    <modularmagic:blockauraprovideroutput>:
    [
        [<ore:logWood>,<naturesaura:gold_brick>,<ore:logWood>],
        [<naturesaura:gold_brick>,<modularmachinery:blockcasing>,<naturesaura:gold_brick>],
        [<naturesaura:gold_brick>,<ore:logWood>,<naturesaura:gold_brick>]
    ]
};
val shapedLessRecipes as IIngredient[][IItemStack] = {
    <contenttweaker:meatstew>:
        [<biomesoplenty:fleshchunk>*2,<ore:bowlWood>]
    ,
    <minecraft:stick>:
        [<ore:treeSapling>]
    ,
    <contenttweaker:netherstew>:
        [<ore:blockCactus>,<betternether:stalagnate_stem>]
    ,
    <betternether:cincinnasite_block>:
        [<betternether:cincinnasite>,<betternether:cincinnasite>]
    ,
    <mod_lavacow:intestine>:
        [<minecraft:rotten_flesh>*3]
    ,
    <minecraft:sapling>:
        [<naturesaura:gold_fiber>,<natura:nether_sapling:2>]
    ,
    <mw:bfgammo>*3:
        [<ore:ingotRefinedObsidian>,<naturesaura:infused_iron>]
    ,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}):
        [<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),<naturesaura:token_fear>]
    ,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}):
        [<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),<naturesaura:token_joy>]
    ,
    <minecraft:grass>:
        [<minecraft:dirt>,<naturesaura:gold_powder>,<minecraft:dye:15>,<betternether:nether_grass>]
    ,
    <minecraft:spider_eye>:
        [<minecraft:string>,<betternether:eye_seed>]
    ,
    <minecraft:double_plant:5>:
        [<minecraft:red_flower>,<minecraft:red_flower>]
    ,
    <minecraft:vine>:
        [<minecraft:nether_wart>,<betternether:agave>]
    ,
    <minecraft:porkchop>:
        [<natura:edibles>,<quark:black_ash>]
    ,
    <minecraft:ender_pearl>:
        [<betternether:eye_seed>,<minecraft:spider_eye>]
    ,
    <minecraft:feather>:
        [<minecraft:fish>,<minecraft:wheat_seeds>]
    ,
    <mw:sulfurdust>:
        [<mekanism:otherdust:3>]
    ,
    <mekanism:otherdust:3>:
        [<mw:sulfurdust>]
};

for item, ingredients in shapedMirroredRecipes{
    recipes.addShaped(item,ingredients);
}
for item, ingredients in shapedLessRecipes{
    recipes.addShapeless(item,ingredients);
}
//仙人掌
furnace.addRecipe(<minecraft:dye:2>, <ore:blockCactus>,0.1);

//模块化机械
//有些人遇到了Func的Bug后↓ 不改了 摆烂了
val inputbus as IItemStack[int] ={
    1:<modularmachinery:blockinputbus:1>,
    2:<modularmachinery:blockinputbus:2>,
    3:<modularmachinery:blockinputbus:3>,
    4:<modularmachinery:blockinputbus:4>,
    5:<modularmachinery:blockinputbus:5>,
    6:<modularmachinery:blockinputbus:6>
};
var inum as int= 2;
for key,input in inputbus{
    for keyy,inputt in inputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(input,[
                [null,<ore:blockHopper>,null],
                [imm*inum,inputt,imm*inum],
                [<ore:chest>,imm*inum,<ore:chest>]
            ]);
            inum+=8;
        }
    }
}
val outputbus as IItemStack[int] ={
    1:<modularmachinery:blockoutputbus:1>,
    2:<modularmachinery:blockoutputbus:2>,
    3:<modularmachinery:blockoutputbus:3>,
    4:<modularmachinery:blockoutputbus:4>,
    5:<modularmachinery:blockoutputbus:5>,
    6:<modularmachinery:blockoutputbus:6>
};
var onum as int= 2;
for key,output in outputbus{
    for keyy,outputt in outputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(output,[
                [<ore:chest>,imm*onum,<ore:chest>],
                [imm*onum,outputt,imm*onum],
                [null,<ore:blockHopper>,null]
            ]);
            onum+=8;
        }
    }
}

val liquidinputbus as IItemStack[int] ={
    1:<modularmachinery:blockfluidinputhatch:1>,
    2:<modularmachinery:blockfluidinputhatch:2>,
    3:<modularmachinery:blockfluidinputhatch:3>,
    4:<modularmachinery:blockfluidinputhatch:4>,
    5:<modularmachinery:blockfluidinputhatch:5>,
    6:<modularmachinery:blockfluidinputhatch:6>,
    7:<modularmachinery:blockfluidinputhatch:7>
};
var linum as int= 2;
for key,input in liquidinputbus{
    for keyy,inputt in liquidinputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(input,[
                [null,<ore:blockHopper>,null],
                [imm*linum,inputt,imm*linum],
                [<minecraft:bucket>,imm*linum,<minecraft:bucket>]
            ]);
            linum+=8;
        }
    }
}
val liquidoutputbus as IItemStack[int] ={
    1:<modularmachinery:blockfluidoutputhatch:1>,
    2:<modularmachinery:blockfluidoutputhatch:2>,
    3:<modularmachinery:blockfluidoutputhatch:3>,
    4:<modularmachinery:blockfluidoutputhatch:4>,
    5:<modularmachinery:blockfluidoutputhatch:5>,
    6:<modularmachinery:blockfluidoutputhatch:6>,
    7:<modularmachinery:blockfluidoutputhatch:7>
};
var lonum as int= 2;
for key,output in liquidoutputbus{
    for keyy,outputt in liquidoutputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(output,[
                [null,imm*lonum,null],
                [imm*lonum,outputt,imm*lonum],
                [<minecraft:bucket>,<ore:blockHopper>,<minecraft:bucket>]
            ]);
            lonum+=8;
        }
    }
}

val energyinputbus as IItemStack[int] ={
    1:<modularmachinery:blockenergyinputhatch:1>,
    2:<modularmachinery:blockenergyinputhatch:2>,
    3:<modularmachinery:blockenergyinputhatch:3>,
    4:<modularmachinery:blockenergyinputhatch:4>,
    5:<modularmachinery:blockenergyinputhatch:5>,
    6:<modularmachinery:blockenergyinputhatch:6>,
    7:<modularmachinery:blockenergyinputhatch:7>
};
var einum as int= 2;
for key,inputbus in energyinputbus{
    for keyy,inputbust in energyinputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(inputbus,[
                [<ore:dustRedstone>*einum,<minecraft:repeater>,<ore:dustRedstone>*einum],
                [imm*einum,inputbust,imm*einum],
                [<ore:dustRedstone>*einum,imm*einum,<ore:dustRedstone>*einum]
            ]);
            einum+=8;
        }
    }
}

val energyoutputbus as IItemStack[int] ={
    1:<modularmachinery:blockenergyoutputhatch:1>,
    2:<modularmachinery:blockenergyoutputhatch:2>,
    3:<modularmachinery:blockenergyoutputhatch:3>,
    4:<modularmachinery:blockenergyoutputhatch:4>,
    5:<modularmachinery:blockenergyoutputhatch:5>,
    6:<modularmachinery:blockenergyoutputhatch:6>,
    7:<modularmachinery:blockenergyoutputhatch:7>
};
var eonum as int= 2;
for key,outputbus in energyoutputbus{
    for keyy,outputbust in energyoutputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(outputbus,[
                [<ore:dustRedstone>*eonum,imm*eonum,<ore:dustRedstone>*eonum],
                [imm*eonum,outputbust,imm*eonum],
                [<ore:dustRedstone>*eonum,<minecraft:repeater>,<ore:dustRedstone>*eonum]
            ]);
            eonum+=8;
        }
    }
}
//玻璃
furnace.addRecipe(<minecraft:glass>,<natura:nether_tainted_soil:*>,0.1);
furnace.addRecipe(<minecraft:glass>,<minecraft:soul_sand>,0.1);
furnace.addRecipe(<minecraft:glass>,<natura:nether_heat_sand>,0.1);