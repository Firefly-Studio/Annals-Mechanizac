//项目刚创建时啥也不会，这脚本正好是在刚创建时写的（

var grass = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine__grass", "j_power_machine", 3276777);
grass.addEnergyPerTickOutput(100000);
grass.addItemInput(<contenttweaker:youyihj>);
grass.build();

var vlava_bucket = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_lava_bucket", "j_power_machine", 10000);
vlava_bucket.addEnergyPerTickOutput(100);
vlava_bucket.addItemInput(<minecraft:lava_bucket>);
vlava_bucket.build();

var vlava_liquid = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_lava_liquid", "j_power_machine", 10000);
vlava_liquid.addEnergyPerTickOutput(100);
vlava_liquid.addFluidInput(<liquid:lava>*100);
vlava_liquid.build();

var vcoal = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_coal", "j_power_machine", 1600);
vcoal.addEnergyPerTickOutput(159);
vcoal.addItemInput(<ore:itemCoal>);
vcoal.build();

var vcharcoal = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_chcoal", "j_power_machine", 1600);
vcharcoal.addEnergyPerTickOutput(159);
vcharcoal.addItemInput(<ore:itemCharcoal>);
vcharcoal.build();

var vdiamond = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_diamond", "j_power_machine", 31000);
vdiamond.addEnergyPerTickOutput(159);
vdiamond.addItemInput(<ore:gemDiamond>);
vdiamond.build();

var vstickwood = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_stickwood", "j_power_machine", 100);
vstickwood.addEnergyPerTickOutput(100);
vstickwood.addItemInput(<ore:stickWood>);
vstickwood.build();

var vbowwood = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_bowwood", "j_power_machine", 100);
vbowwood.addEnergyPerTickOutput(100);
vbowwood.addItemInput(<ore:bowWood>);
vbowwood.build();

var vplankwood = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_plankwood", "j_power_machine", 1360);
vplankwood.addEnergyPerTickOutput(136);
vplankwood.addItemInput(<ore:plankWood>);
vplankwood.build();

var vlogwood = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_logwood", "j_power_machine", 1360);
vlogwood.addEnergyPerTickOutput(136);
vlogwood.addItemInput(<ore:logWood>);
vlogwood.build();

var vwoodl = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_wool", "j_power_machine", 100);
vwoodl.addEnergyPerTickOutput(100);
vwoodl.addItemInput(<ore:wool>);
vwoodl.build();

var vstairwood = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_stairwood", "j_power_machine", 1360);
vstairwood.addEnergyPerTickOutput(136);
vstairwood.addItemInput(<ore:stairWood>);
vstairwood.build();

var vshelf = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_shelf", "j_power_machine", 1360);
vshelf.addEnergyPerTickOutput(136);
vshelf.addItemInput(<ore:bookshelf>);
vshelf.build();

var vcarpets = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_carpets", "j_power_machine", 67);
vcarpets.addEnergyPerTickOutput(60);
vcarpets.addItemInput(<minecraft:carpet>);
vcarpets.build();

var vfences = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_fenceWood", "j_power_machine", 1360);
vfences.addEnergyPerTickOutput(136);
vfences.addItemInput(<ore:fenceWood>);
vfences.build();

var vbanners = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_banner", "j_power_machine", 1360);
vbanners.addEnergyPerTickOutput(136);
vbanners.addItemInput(<minecraft:banner>);
vbanners.build();

var vchestwood = mods.modularmachinery.RecipeBuilder.newBuilder("j_powermachine_chestwood", "j_power_machine", 1360);
vchestwood.addEnergyPerTickOutput(136);
vchestwood.addItemInput(<ore:chestWood>);
vchestwood.build();