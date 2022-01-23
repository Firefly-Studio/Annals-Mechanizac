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
            .addEnergyPerTickInput(35)
            .addFluidInput(<liquid:lava>*50)
            .addItemInput(dore)
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
            mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_plus_"+i, "blastFurnacePlus", 200, 0)
            .addFluidInput(<liquid:lava>*120)
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
            mods.modularmachinery.RecipeBuilder.newBuilder("balst_furnace_plus_"+i, "blastFurnacePlus", 120, 1)
            .addEnergyPerTickInput(90)
            .addFluidInput(<liquid:lava>*25)
            .addItemInput(dore)
            .addItemOutput(iore,2)
            .build();
            i+="1";
            break;
        }
    }
}