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
