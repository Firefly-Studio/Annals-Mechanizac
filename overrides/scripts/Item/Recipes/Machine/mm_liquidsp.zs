import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
RecipeBuilder.newBuilder("lava", "liquidsp", 50)
    .addFluidInput(<liquid:lava>*100)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:water>*65)
    .addFluidOutput(<liquid:oil>*35)
    .build();

RecipeBuilder.newBuilder("coolliquid", "liquidsp", 50)
    .addFluidInput(<liquid:coolliquid>*100)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:water>*85)
    .addFluidOutput(<liquid:liquidethene>*15)
    .build();

RecipeBuilder.newBuilder("water", "liquidsp", 50)
    .addFluidInput(<liquid:water>*120)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:liquidhydrogen>*80)
    .addFluidOutput(<liquid:liquidoxygen>*40)
    .build();

RecipeBuilder.newBuilder("oil", "liquidsp", 50)
    .addFluidInput(<liquid:oil>*100)
    .addEnergyPerTickInput(100)
    .addFluidOutput(<liquid:coolliquid>*80)
    .addFluidOutput(<liquid:water>*20)
    .build();