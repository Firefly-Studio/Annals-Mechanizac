#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var i as string ="1";
for key,dore in aingotOre{
    for keyy,iore in aingotOres{
        for keyyy,aore in alloyOres{
            if ((key == keyy)&&(key == keyyy)) {
                mods.modularmachinery.RecipeBuilder.newBuilder("alloy_furnace_"+i, "alloy_furnace", 500)
                .addEnergyPerTickInput(80)
                .addItemInput(dore,2)
                .addItemInput(iore,2)
                .addItemOutput(aore,4)
                .build();
                i+="1";
                break;
            }
        }
    }
}
