import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
import mods.naturesaura.TreeRitual;
val dirt as IIngredient[]=[
    <minecraft:soul_sand>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),
    <ore:dustSulfur>,
    <ore:itemClay>
];
TreeRitual.addRecipe("dirtsama", <ore:treeSapling>, <minecraft:dirt>*16, 500, dirt);
val red as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <minecraft:nether_wart>
];
TreeRitual.addRecipe("red", <ore:treeSapling>, <minecraft:red_flower>*16, 600, red);
val yellow as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <betternether:nether_reed>
];
TreeRitual.addRecipe("yellow", <ore:treeSapling>, <minecraft:yellow_flower>*16, 600, yellow);
val red4 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <betternether:nether_grass>
];
TreeRitual.addRecipe("red4", <ore:treeSapling>, <minecraft:red_flower:4>*16, 600, red4);
val red1 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <minecraft:redstone_block>
];
TreeRitual.addRecipe("red1", <ore:treeSapling>, <minecraft:red_flower:1>*16, 600, red1);
val red2 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <minecraft:golden_sword>
];
TreeRitual.addRecipe("red2", <ore:treeSapling>, <minecraft:red_flower:2>*16, 600, red2);
val red3 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <minecraft:dye:15>
];
TreeRitual.addRecipe("red3", <ore:treeSapling>, <minecraft:red_flower:3>*16, 600, red3);
val red6 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <mod_lavacow:moltenbeef>
];
TreeRitual.addRecipe("red6", <ore:treeSapling>, <minecraft:red_flower:6>*16, 600, red6);
val red5 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <betternether:eye_seed>
];
TreeRitual.addRecipe("red5", <ore:treeSapling>, <minecraft:red_flower:5>*16, 600, red5);
val red7 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <ore:mushroomAny>
];
TreeRitual.addRecipe("red7", <ore:treeSapling>, <minecraft:red_flower:7>*16, 600, red7);
val red8 as IIngredient[]=[
    <betternether:egg_plant>,
    <naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),
    <betternether:stalagnate_stem>,
    <quark:black_ash>
];
TreeRitual.addRecipe("red8", <ore:treeSapling>, <minecraft:red_flower:8>*16, 600, red8);
val kk as IIngredient[]=[
    <naturesaura:gold_powder>,
    <naturesaura:gold_powder>,
    <ore:oreDiamond>,
    <ore:oreRedstone>
];
TreeRitual.addRecipe("kk", <ore:treeSapling>, <naturesaura:effect_powder>.withTag({effect: "naturesaura:ore_spawn"})*4, 600, kk);