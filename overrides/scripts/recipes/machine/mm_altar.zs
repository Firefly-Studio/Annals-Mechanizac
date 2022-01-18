#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
RecipeBuilder.newBuilder("a2s", "altar", 400)
    .addAuraInput("nether",3)
    .addItemInput(<minecraft:stone>)
    .addItemOutput(<naturesaura:infused_stone>)
    .build();
RecipeBuilder.newBuilder("a2ib", "altar", 400)
    .addAuraInput("nether",3)
    .addItemInput(<minecraft:iron_block>)
    .addItemOutput(<naturesaura:infused_iron_block>)
    .build();
RecipeBuilder.newBuilder("a2ii", "altar", 400)
    .addAuraInput("nether",3)
    .addItemInput(<minecraft:iron_ingot>)
    .addItemOutput(<naturesaura:infused_iron>)
    .build();