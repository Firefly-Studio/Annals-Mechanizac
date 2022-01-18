//项目刚创建时啥也不会，这脚本正好是在刚创建时写的（
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
RecipeBuilder.newBuilder("s_powermachine_grass", "s_power_machine", 3276777)
    .addEnergyPerTickOutput(100000)
    .addItemInput(<contenttweaker:youyihj>)
    .build();


RecipeBuilder.newBuilder("s_powermachine_lava_bucket", "s_power_machine", 10000)
    .addEnergyPerTickOutput(200)
    .addItemInput(<minecraft:lava_bucket>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_lava_liquid", "s_power_machine", 1000)
    .addEnergyPerTickOutput(200)
    .addFluidInput(<liquid:lava>*100)
    .build();

RecipeBuilder.newBuilder("s_powermachine_coal", "s_power_machine", 1600)
    .addEnergyPerTickOutput(300)
    .addItemInput(<ore:itemCoal>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_chcoal", "s_power_machine", 1600)
    .addEnergyPerTickOutput(300)
    .addItemInput(<ore:itemCharcoal>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_diamond", "s_power_machine", 31000)
    .addEnergyPerTickOutput(400)
    .addItemInput(<ore:gemDiamond>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_stickwood", "s_power_machine", 100)
    .addEnergyPerTickOutput(100)
    .addItemInput(<ore:stickWood>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_bowwood", "s_power_machine", 100)
    .addEnergyPerTickOutput(100)
    .addItemInput(<ore:bowWood>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_plankwood", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:plankWood>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_logwood", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:logWood>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_wool", "s_power_machine", 100)
    .addEnergyPerTickOutput(100)
    .addItemInput(<ore:wool>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_stairwood", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:stairWood>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_shelf", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:bookshelf>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_carpets", "s_power_machine", 67)
    .addEnergyPerTickOutput(60)
    .addItemInput(<minecraft:carpet>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_fenceWood", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:fenceWood>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_banner", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<minecraft:banner>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_chestwood", "s_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:chestWood>)
    .build();