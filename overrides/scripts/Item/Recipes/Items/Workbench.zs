import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
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
        [iIron,<ore:circuitBasic>,iIron],
        [iIron,imm,iIron]
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
        [imm,<ore:circuitBasic>,imm],
        [imm,<ore:dustRedstone>,imm]
    ],
    <modularcontroller:separator_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [imm,<ore:circuitAdvanced>,imm],
        [<ore:ingotSteel>,<ore:dustRedstone>,<ore:ingotSteel>]
    ],
    <modularcontroller:j_mineral_crusher_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [imm,<ore:circuitBasic>,imm],
        [<ore:ingotSteel>,<ore:gearIron>,<ore:ingotSteel>]
    ],
    <modularcontroller:e_mineral_crusher_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [imm,<ore:circuitElite>,imm],
        [<ore:blockSteel>,<ore:gearDiamond>,<ore:blockSteel>]
    ],
    <modularcontroller:blastfurnace_controller>:
    [
        [null,<modularmachinery:blockcasing>,null],
        [imm,<ore:circuitAdvanced>,imm],
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
    ],
    <modularcontroller:machine_projector>:
    [
        [null,<ore:ingotSteel>,<ore:ingotSteel>],
        [null,<ore:gearGold>,null],
        [null,<ore:ingotSteel>,null]
    ],
    <modularmachinery:blockcasing:4>*4:
    [
        [<ore:blockRefinedObsidian>,<ore:ingotRefinedObsidian>,<ore:blockRefinedObsidian>],
        [<ore:gemEmerald>,<modularmachinery:blockcasing>,<ore:gemEmerald>],
        [<ore:alloyElite>,<ore:ingotRefinedGlowstone>,<ore:alloyElite>]
    ],
    <minecraft:written_book>.withTag({pages: ["{\"text\":\"生 万物盛景\\n死 尽眼凋零\\n望 筑起文明\\n闻 颂词环萦\\n\\n无人知是何因\\n相继跪拜匍匐着前进\\n容装血红的心\\n却欲将所有事物洗净\\n\\n忏悔的钟声又鸣\\n是否能再见黎明\"}", "{\"text\":\"祈祷的人\\n蜂拥而行\\n静候着 天罚降临\\n\\n世人难言\\n何方归去\\n只注视 无光红日\\n\\n或是观测 或被观测\\n沙盘之中塑造的什么\\n亦是存活 亦被存活\\n无法掌控何处为自我\"}"],author: "Unknow", title: "颂词", resolved: 1 as byte}):
    [
        [null,<minecraft:red_flower>,null],
        [<minecraft:red_flower>,<quark:black_ash>,<minecraft:red_flower>],
        [null,<minecraft:red_flower>,null]
    ],
    <modularcontroller:mobaltar_controller>:
    [
        [null,<naturesaura:infused_iron_block>,null],
        [<naturesaura:sky_ingot>,<ore:circuitUltimate>,<naturesaura:sky_ingot>],
        [null,<naturesaura:infused_iron_block>,null]
    ],
    <modularcontroller:liquidsp_controller>:
    [
        [<naturesaura:sky_ingot>,null,<naturesaura:sky_ingot>],
        [<buildcraftfactory:tank>,<ore:circuitUltimate>,<buildcraftfactory:tank>],
        [null,<naturesaura:infused_iron_block>,null]
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
        [<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:rotten_flesh>]
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
    ,
    <patchouli:guide_book>.withTag({"patchouli:book": "patchouli:help"}):
        [<ore:ingotGold>,<minecraft:book>]
    ,<contenttweaker:key>:
        [<contenttweaker:pearl_red>,<contenttweaker:pearl_blue>,<contenttweaker:pearl_yellow>,<contenttweaker:pearl_green>,<contenttweaker:pearl_orange>,<contenttweaker:pearl_purple>]
    ,
    <minecraft:dye:3>*12:
        [<betternether:red_mold>,<betternether:lucis_spore>]
    ,
    <natura:edibles:11>:
        [<ore:blockCactus>]
    ,
    <xnet:netcable>*12:
        [<ore:ingotOsmium>,<ore:itemSilicon>]
    ,
    <t3s4ebw:crystal_crop>:
        [<ore:seed>,<ebwizardry:magic_crystal>]
    ,
    <minecraft:snowball>:
        [<ore:slimeball>,<ebwizardry:crystal_shard>]
    ,
    <minecraft:dragon_egg>:
        [<inventoryneko:neko>,<appliedenergistics2:material:48>,<minecraft:flint>]
        
};

for item, ingredients in shapedMirroredRecipes{
    recipes.addShaped(item,ingredients);
}
for item, ingredients in shapedLessRecipes{
    recipes.addShapeless(item,ingredients);
}

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
var inum as int= 1;
for key,input in inputbus{
    for keyy,inputt in inputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(input,[
                [null,<ore:blockHopper>,null],
                [imm*inum,inputt,imm*inum],
                [<ore:chest>,imm*inum,<ore:chest>]
            ]);
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
var onum as int= 1;
for key,output in outputbus{
    for keyy,outputt in outputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(output,[
                [<ore:chest>,imm*onum,<ore:chest>],
                [imm*onum,outputt,imm*onum],
                [null,<ore:blockHopper>,null]
            ]);
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
var linum as int= 1;
for key,input in liquidinputbus{
    for keyy,inputt in liquidinputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(input,[
                [null,<ore:blockHopper>,null],
                [imm*linum,inputt,imm*linum],
                [<minecraft:bucket>,imm*linum,<minecraft:bucket>]
            ]);
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
var lonum as int= 1;
for key,output in liquidoutputbus{
    for keyy,outputt in liquidoutputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(output,[
                [null,imm*lonum,null],
                [imm*lonum,outputt,imm*lonum],
                [<minecraft:bucket>,<ore:blockHopper>,<minecraft:bucket>]
            ]);
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
var einum as int= 1;
for key,inputbus in energyinputbus{
    for keyy,inputbust in energyinputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(inputbus,[
                [<ore:dustRedstone>*einum,<minecraft:repeater>,<ore:dustRedstone>*einum],
                [imm*einum,inputbust,imm*einum],
                [<ore:dustRedstone>*einum,imm*einum,<ore:dustRedstone>*einum]
            ]);
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
var eonum as int= 1;
for key,outputbus in energyoutputbus{
    for keyy,outputbust in energyoutputbus{
        if(key == keyy+1){
            recipes.addShapedMirrored(outputbus,[
                [<ore:dustRedstone>*eonum,imm*eonum,<ore:dustRedstone>*eonum],
                [imm*eonum,outputbust,imm*eonum],
                [<ore:dustRedstone>*eonum,<minecraft:repeater>,<ore:dustRedstone>*eonum]
            ]);
        }
    }
}
