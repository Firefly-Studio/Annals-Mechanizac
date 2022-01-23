import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
var burnit as IIngredient[IItemStack]={
    <minecraft:dye:2>:<ore:blockCactus>,
    <minecraft:glass>:<natura:nether_tainted_soil:*>,
    <minecraft:glass>:<minecraft:soul_sand>,
    <minecraft:glass>:<natura:nether_heat_sand>,

};
function burnIt(output as IItemStack,input as IIngredient){
    furnace.addRecipe(output,input,0.1);
}
for output,input in burnit{
    burnIt(output,input);
}
