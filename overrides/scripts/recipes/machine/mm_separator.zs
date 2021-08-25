#priority 1
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var i as string ="1";
for key,dore in sblockOres{
    for keyy,iore in sdustOre{
        for keyyy,aore in sdustOres{
            if ((key == keyy)&&(key == keyyy)) {
                mods.modularmachinery.RecipeBuilder.newBuilder("separator_"+i, "separator", 1500)
                .addEnergyPerTickInput(25)
                .addItemInput(dore,16)
                .addItemOutput(iore,10)
                .addItemOutput(aore,3)
                .build();
                i+="1";
                break;
            }
        }
    }
}
mods.modularmachinery.RecipeBuilder.newBuilder("separator_obs", "separator", 600)
    .addEnergyPerTickInput(30)
    .addItemInput(<ore:obsidian>,2)
    .addItemOutput(<ore:ingotRefinedObsidian>)
    .build();

        
