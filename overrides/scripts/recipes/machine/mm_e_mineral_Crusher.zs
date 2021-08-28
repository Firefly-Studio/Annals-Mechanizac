#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var i as string ="1";
for key,bore in mblockOres{
    for keyy,dore in mdustOres{
        if (key == keyy) {
            mods.modularmachinery.RecipeBuilder.newBuilder("e_mineral_"+i, "e_mineral_crusher", 60)
            .addEnergyPerTickInput(15)
            .addItemInput(bore)
            .addItemOutput(dore,2)
            .build();
            i+="1";
            break;
        }
    }
}