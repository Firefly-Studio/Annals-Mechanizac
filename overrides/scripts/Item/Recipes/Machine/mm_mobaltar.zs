import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

var items as IOreDictEntry[IItemStack]={
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:chicken"}}):<ore:itemCoal>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}}):<ore:itemCharcoal>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:horse"}}):<ore:gemDiamond>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:llama"}}):<ore:ingotIron>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:mooshroom"}}):<ore:ingotGold>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:ocelot"}}):<ore:ingotOsmium>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:pig"}}):<ore:ingotSteel>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:rabbit"}}):<ore:ingotCopper>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:villager"}}):<ore:ingotRefinedObsidian>,
    <minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:sheep"}}):<ore:ingotTin>
};
function addon(input as IOreDictEntry,output as IItemStack,i as int){
    RecipeBuilder.newBuilder("mo"~i, "mobaltar", 600)
    .addItemInput(input,16)
    .addAuraInput("nether",1)
    .addEnergyPerTickInput(60)
    .addFluidInput(<liquid:liquidhydrogen>*100)
    .addItemOutput(output)
    .build();
}
var i as int = 1;
for input,output in items{
    addon(output,input,i);
    i+=i;
}
