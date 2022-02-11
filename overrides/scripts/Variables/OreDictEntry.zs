#priority 1145141
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
val oreDictAddMap as IItemStack[][IOreDictEntry] = {
    <ore:blockGlass>:[<natura:nether_glass:*>],
    <ore:sand>:[<natura:nether_tainted_soil:*>,<minecraft:soul_sand>],
    <ore:blockCactus>:[<betternether:barrel_cactus>,<betternether:nether_cactus>],
    <ore:enrichedIron>:[<mekanism:enrichediron>],
    <ore:blockBone>:[<betternether:bone_block>],
    <ore:blockGlowstone>:[<minecraft:glowstone>],
    <ore:colder>:[<ore:sugarcane>.firstItem,<betternether:egg_plant>],
    <ore:fiber>:[<naturesaura:gold_fiber>],
    <ore:graphite>:[<mw:graphitechunk>],
    <ore:blockSky>:[<appliedenergistics2:sky_stone_block>],
    <ore:record>:[<pigstep:pigstep>],
    <ore:vine>:[<biomesoplenty:ivy>],
    <ore:gemglob1>:[<gb:glob>],
    <ore:gemglob2>:[<gb:glob2>],
    <ore:gemglob3>:[<gb:glob3>],
    <ore:firedMeat>:[<mod_lavacow:moltenbeef>],
    <ore:token>:[<naturesaura:token_joy>,<naturesaura:token_fear>,<naturesaura:token_anger>,<naturesaura:token_sorrow>,<naturesaura:token_euphoria>,<naturesaura:token_terror>,<naturesaura:token_rage>,<naturesaura:token_grief>],
    <ore:itemGrass>:[<contenttweaker:youyihj>],
    <ore:auraBottle>:[<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:nether"}),<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:overworld"}),<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:end"}),<naturesaura:aura_bottle>.withTag({stored_type: "naturesaura:other"})],
    <ore:eyesGlass>:[<naturesaura:ender_access>],
    <ore:emeraldCobble>:[<hammercore:emerald_bordered_cobblestone>],
    <ore:aofePearls>:[<contenttweaker:pearl_red>,<contenttweaker:pearl_blue>,<contenttweaker:pearl_yellow>,<contenttweaker:pearl_green>,<contenttweaker:pearl_orange>,<contenttweaker:pearl_purple>],
    <ore:auraStone>:[<naturesaura:infused_stone>]
};
for oda, item in oreDictAddMap{
    oda.add(item);
}