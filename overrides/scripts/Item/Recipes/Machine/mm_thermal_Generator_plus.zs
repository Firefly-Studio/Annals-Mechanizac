import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
var thesenior as IOreDictEntry[string]={
    "coal":<ore:itemCoal>,
    "charCoal":<ore:itemCharcoal>,
    "gemDiamond":<ore:gemDiamond>
};
var theseniorEnOutnum as int[string]={
    "coal":400,
    "charCoal":400,
    "gemDiamond":1000
};
function burnIt(name as string,input as IOreDictEntry,num as int){
    RecipeBuilder.newBuilder("s_powermachine_"~name, "s_power_machine", 800).addEnergyPerTickOutput(num).addItemInput(input).build();
}
for name,input in thesenior{
    for namez,num in theseniorEnOutnum{
        if(name==namez){
            burnIt(name,input,num);
        }
    }
}

RecipeBuilder.newBuilder("s_powermachine_grass", "s_power_machine", 3276777)
    .addEnergyPerTickOutput(100000)
    .addItemInput(<contenttweaker:youyihj>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_lava_bucket", "s_power_machine", 10000)
    .addEnergyPerTickOutput(200)
    .addItemInput(<minecraft:lava_bucket>)
    .build();

RecipeBuilder.newBuilder("s_powermachine_lava_liquid", "s_power_machine", 1000)
    .addEnergyPerTickOutput(200)
    .addFluidInput(<liquid:lava>*100)
    .build();