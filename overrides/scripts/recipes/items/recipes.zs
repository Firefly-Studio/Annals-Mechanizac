import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
//矿辞
<ore:blockGlass>.add(<natura:nether_glass:*>);
<ore:sand>.add(<natura:nether_tainted_soil:*>);
<ore:sand>.add(<minecraft:soul_sand>);
<ore:blockCactus>.add(<betternether:barrel_cactus>);
<ore:blockCactus>.add(<betternether:nether_cactus>);
<ore:mortar>.add(<ctmortar:mortar_stone>);
<ore:mortar>.add(<ctmortar:mortar_wood>);
<ore:mortar>.add(<ctmortar:mortar_iron>);
<ore:mortar>.add(<ctmortar:mortar_diamond>);
<ore:enrichedIron>.add(<mekanism:enrichediron>);
<ore:blockBone>.add(<betternether:bone_block>);
<ore:blockGlowstone>.add(<minecraft:glowstone>);
<ore:colder>.addAll(<ore:sugarcane>);
<ore:colder>.add(<betternether:egg_plant>);
//变量
val iIron = <ore:ingotIron>;
val imm = <modularmachinery:itemmodularium>;
val ccn = <betternether:cincinnasite_forged>;

//树苗-木棍
recipes.addShapeless(<minecraft:stick>,
 [<ore:treeSapling>]);

//肉粥
recipes.addShapeless(<contenttweaker:meatstew>,
 [<biomesoplenty:fleshchunk>*2,<ore:bowlWood>]);

//燧石斧
recipes.addShapedMirrored(<contenttweaker:hatchet>,[
    [<ore:itemFlint>,<ore:itemFlint>],
    [<ore:stickWood>]
]);

//仙人掌
furnace.addRecipe(<minecraft:dye:2>, <ore:blockCactus>,0.1);
recipes.addShapeless(<contenttweaker:netherstew>,
 [<ore:blockCactus>,<betternether:stalagnate_stem>]);

//桶
recipes.addShapedMirrored(<minecraft:bucket>,
 [[ccn,null,ccn],
 [null,ccn,null]
 ]);

//模块化机械
recipes.addShapedMirrored(<modularmachinery:blockcasing:3>,
 [[null,imm,null],
  [imm,<ore:gearIron>,imm],
  [null,imm,null]
 ]
);
recipes.addShapedMirrored(<modularmachinery:blockcasing:1>,[
    [null,imm,null],
    [imm,<trapcraft:fan>,imm],
    [null,imm,null]
]);
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
                [null,<ore:hopper>,null],
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
                [null,<ore:hopper>,null]
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
                [null,<ore:hopper>,null],
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
                [<minecraft:bucket>,<ore:hopper>,<minecraft:bucket>]
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

//引擎
recipes.addShapedMirrored(<buildcraftcore:engine>,[
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [null,<ore:blockGlass>,null],
    [<ore:gearWood>,<ore:craftingPiston>,<ore:gearWood>]
]);
recipes.addShapedMirrored(<buildcraftcore:engine:1>,[
    [<ore:cobblestone>,<ore:cobblestone>,<ore:cobblestone>],
    [null,<ore:blockGlass>,null],
    [<ore:gearStone>,<ore:craftingPiston>,<ore:gearStone>]
]);
recipes.addShapedMirrored(<buildcraftcore:engine:2>,[
    [iIron,iIron,iIron],
    [null,<ore:blockGlass>,null],
    [<ore:gearIron>,<ore:craftingPiston>,<ore:gearIron>]
]);

//工作台
recipes.remove(<natura:overworld_workbenches:*>);
recipes.remove(<natura:nether_workbenches:*>);

//子弹
recipes.addShapeless(<minecraft:gunpowder>*2,[<ctmortar:mortar_iron>.anyDamage().noReturn(),<ore:itemBlazeRod>]);
recipes.addShapeless(<cgm:basic_ammo>*4,[<ore:ingotIron>,<minecraft:gunpowder>]);

//辛西纳
recipes.remove(<betternether:cincinnasite_block>);
recipes.addShapeless(<betternether:cincinnasite_block>,[<betternether:cincinnasite>,<betternether:cincinnasite>]);

//电路板
recipes.addShapedMirrored(<mekanism:controlcircuit>,[
    [<ore:dustRedstone>,<ore:ingotSteel>,<ore:dustRedstone>],
    [<ore:ingotSteel>,<ore:ingotSilicon>,<ore:ingotSteel>],
    [<ore:dustRedstone>,<ore:ingotSteel>,<ore:dustRedstone>]
    ]);

//肠子
recipes.addShapeless(<mod_lavacow:intestine>,[<minecraft:rotten_flesh>*3]);

//刷怪蛋
recipes.addShapedMirrored(<minecraft:spawn_egg>.withTag({EntityTag: {id: "mod_lavacow:skeletonking"}}),[
    [<ore:bone>,<ore:itemBlazeRod>,<ore:blockDiamond>*2],
    [<ore:itemBlazeRod>,<ore:pearlEnderEye>,<ore:itemBlazeRod>],
    [<ore:blockDiamond>*2,<ore:itemBlazeRod>,<ore:bone>]
    ]);
recipes.addShapedMirrored(<minecraft:spawn_egg>.withTag({EntityTag: {id: "mutantbeasts:mutant_skeleton"}}),[
    [<ore:bone>,<ore:itemBlazeRod>,<ore:blockDiamond>*2],
    [<minecraft:rotten_flesh>*32,<ore:pearlEnderEye>,<minecraft:rotten_flesh>*32],
    [<ore:blockDiamond>*2,<ore:itemBlazeRod>,<ore:bone>]
    ]);