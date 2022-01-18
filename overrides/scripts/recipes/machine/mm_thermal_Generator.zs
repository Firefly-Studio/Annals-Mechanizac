//项目刚创建时啥也不会，这脚本正好是在刚创建时写的（
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
RecipeBuilder.newBuilder("j_powermachine__grass", "j_power_machine", 3276777)
    .addEnergyPerTickOutput(100000)
    .addItemInput(<contenttweaker:youyihj>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_lava_bucket", "j_power_machine", 10000)
    .addEnergyPerTickOutput(100)
    .addItemInput(<minecraft:lava_bucket>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_lava_liquid", "j_power_machine", 10000)
    .addEnergyPerTickOutput(100)
    .addFluidInput(<liquid:lava>*100)
    .build();

RecipeBuilder.newBuilder("j_powermachine_coal", "j_power_machine", 1600)
    .addEnergyPerTickOutput(159)
    .addItemInput(<ore:itemCoal>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_chcoal", "j_power_machine", 1600)
    .addEnergyPerTickOutput(159)
    .addItemInput(<ore:itemCharcoal>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_diamond", "j_power_machine", 31000)
    .addEnergyPerTickOutput(159)
    .addItemInput(<ore:gemDiamond>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_stickwood", "j_power_machine", 100)
    .addEnergyPerTickOutput(100)
    .addItemInput(<ore:stickWood>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_bowwood", "j_power_machine", 100)
    .addEnergyPerTickOutput(100)
    .addItemInput(<ore:bowWood>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_plankwood", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:plankWood>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_logwood", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:logWood>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_wool", "j_power_machine", 100)
    .addEnergyPerTickOutput(100)
    .addItemInput(<ore:wool>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_stairwood", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:stairWood>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_shelf", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:bookshelf>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_carpets", "j_power_machine", 67)
    .addEnergyPerTickOutput(60)
    .addItemInput(<minecraft:carpet>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_fenceWood", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:fenceWood>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_banner", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<minecraft:banner>)
    .build();

RecipeBuilder.newBuilder("j_powermachine_chestwood", "j_power_machine", 1360)
    .addEnergyPerTickOutput(136)
    .addItemInput(<ore:chestWood>)
    .build();