//项目刚创建时啥也不会，这脚本正好是在刚创建时写的（
var vlava_bucket = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_lava_bucket", "s_power_machine", 10000);
vlava_bucket.addEnergyPerTickOutput(200);
vlava_bucket.addItemInput(<minecraft:lava_bucket>);
vlava_bucket.build();

var vlava_liquid = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_lava_liquid", "s_power_machine", 1000);
vlava_liquid.addEnergyPerTickOutput(200);
vlava_liquid.addFluidInput(<liquid:lava>*100);
vlava_liquid.build();

var vcoal = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_coal", "s_power_machine", 1600);
vcoal.addEnergyPerTickOutput(300);
vcoal.addItemInput(<ore:itemCoal>);
vcoal.build();

var vcharcoal = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_chcoal", "s_power_machine", 1600);
vcharcoal.addEnergyPerTickOutput(300);
vcharcoal.addItemInput(<ore:itemCharcoal>);
vcharcoal.build();

var vdiamond = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_diamond", "s_power_machine", 31000);
vdiamond.addEnergyPerTickOutput(400);
vdiamond.addItemInput(<ore:gemDiamond>);
vdiamond.build();

var vstickwood = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_stickwood", "s_power_machine", 100);
vstickwood.addEnergyPerTickOutput(100);
vstickwood.addItemInput(<ore:stickWood>);
vstickwood.build();

var vbowwood = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_bowwood", "s_power_machine", 100);
vbowwood.addEnergyPerTickOutput(100);
vbowwood.addItemInput(<ore:bowWood>);
vbowwood.build();

var vplankwood = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_plankwood", "s_power_machine", 1360);
vplankwood.addEnergyPerTickOutput(136);
vplankwood.addItemInput(<ore:plankWood>);
vplankwood.build();

var vlogwood = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_logwood", "s_power_machine", 1360);
vlogwood.addEnergyPerTickOutput(136);
vlogwood.addItemInput(<ore:logWood>);
vlogwood.build();

var vwoodl = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_wool", "s_power_machine", 100);
vwoodl.addEnergyPerTickOutput(100);
vwoodl.addItemInput(<ore:wool>);
vwoodl.build();

var vstairwood = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_stairwood", "s_power_machine", 1360);
vstairwood.addEnergyPerTickOutput(136);
vstairwood.addItemInput(<ore:stairWood>);
vstairwood.build();

var vshelf = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_shelf", "s_power_machine", 1360);
vshelf.addEnergyPerTickOutput(136);
vshelf.addItemInput(<ore:bookshelf>);
vshelf.build();

var vcarpets = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_carpets", "s_power_machine", 67);
vcarpets.addEnergyPerTickOutput(60);
vcarpets.addItemInput(<minecraft:carpet>);
vcarpets.build();

var vfences = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_fenceWood", "s_power_machine", 1360);
vfences.addEnergyPerTickOutput(136);
vfences.addItemInput(<ore:fenceWood>);
vfences.build();

var vbanners = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_banner", "s_power_machine", 1360);
vbanners.addEnergyPerTickOutput(136);
vbanners.addItemInput(<minecraft:banner>);
vbanners.build();

var vchestwood = mods.modularmachinery.RecipeBuilder.newBuilder("s_powermachine_chestwood", "s_power_machine", 1360);
vchestwood.addEnergyPerTickOutput(136);
vchestwood.addItemInput(<ore:chestWood>);
vchestwood.build();