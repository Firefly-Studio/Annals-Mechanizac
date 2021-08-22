#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var i as string ="1";
for key,bore in mblockOres{
    for keyy,dore in mdustOres{
        if (key == keyy) {
            mods.modularmachinery.RecipeBuilder.newBuilder("j_mineral_"+i, "j_mineral_crusher", 120)
            .addFluidInput(<liquid:lava>*100)
            .addItemInput(bore)
            .addItemOutput(dore)
            .build();
            i+="1";
            break;
        }
    }
}