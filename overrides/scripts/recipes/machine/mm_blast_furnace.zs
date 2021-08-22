#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var i as string ="1";
for key,dore in bdustOres{
    for keyy,iore in bingotOres{
        if (key == keyy) {
            mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_"+i, "blastFurnace", 700, 0)
            .addFluidInput(<liquid:lava>*100)
            .addItemInput(dore)
            .addItemInput(<ore:itemCoal>)
            .addItemOutput(iore,2)
            .build();
            i+="1";
            break;
        }
    }
}
for key,dore in bdustOres{
    for keyy,iore in bingotOres{
        if (key == keyy) {
            mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_"+i, "blastFurnace", 400, 1)
            .addEnergyPerTickInput(90)
            .addFluidInput(<liquid:lava>*50)
            .addItemInput(dore)
            .addItemOutput(iore,2)
            .build();
            i+="1";
            break;
        }
    }
}
mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_steel", "blastFurnace", 1200)
    .addFluidInput(<liquid:lava>*200)
    .addItemInput(<ore:ingotIron>)
    .addItemInput(<ore:itemCoal>)
    .addItemOutput(<ore:ingotSteel>)
    .build();
mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_silicon", "blastFurnace", 1000)
    .addEnergyPerTickInput(100)
    .addItemInput(<ore:sand>)
    .addItemOutput(<ore:ingotSilicon>)
    .build();