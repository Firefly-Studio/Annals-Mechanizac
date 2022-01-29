import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;

var thejunior as IOreDictEntry[string]={
    "coal":<ore:itemCoal>,
    "charCoal":<ore:itemCharcoal>,
    "gemDiamond":<ore:gemDiamond>,
    "meat":<ore:firedMeat>
};
var thejuniorEnOutnum as int[string]={
    "coal":159,
    "charCoal":159,
    "gemDiamond":250,
    "meat":300
};
function burnIt(name as string,input as IOreDictEntry,num as int){
    RecipeBuilder.newBuilder("j_powermachine_"~name, "j_power_machine", 800).addEnergyPerTickOutput(num).addItemInput(input).build();
}
for name,input in thejunior{
    for namez,num in thejuniorEnOutnum{
        if(name==namez){
            burnIt(name,input,num);
        }
    }
}

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
