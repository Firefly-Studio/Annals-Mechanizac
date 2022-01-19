#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
RecipeBuilder.newBuilder("e2a", "transport", 600)
    .addItemInput(<minecraft:iron_ingot>)
    .addEnergyPerTickInput(12)
    .addAuraOutput("nether",100)
    .addItemOutput(<minecraft:iron_ingot>)
    .build();
RecipeBuilder.newBuilder("a2e", "transport", 600)
    .addItemInput(<minecraft:gold_ingot>)
    .addAuraInput("nether",100)
    .addEnergyPerTickOutput(12)
    .addItemOutput(<minecraft:gold_ingot>)
    .build();

RecipeBuilder.newBuilder("e2ap", "transport", 600)
    .addItemInput(<minecraft:diamond>)
    .addEnergyPerTickInput(120)
    .addAuraOutput("nether",1000)
    .addItemOutput(<minecraft:diamond>)
    .build();
RecipeBuilder.newBuilder("a2ep", "transport", 600)
    .addItemInput(<minecraft:emerald>)
    .addAuraInput("nether",1000)
    .addEnergyPerTickOutput(120)
    .addItemOutput(<minecraft:emerald>)
    .build();
RecipeBuilder.newBuilder("o2f", "transport", 600)
    .addItemInput(<ore:obsidian>)
    .addAuraInput("nether",2)
    .addEnergyPerTickInput(120)
    .addItemOutput(<ore:blockSky>,2)
    .build();
