#priority 1145141
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;
//部分思路来自 https://github.com/TEP-team/Travel-Earth-Plan/blob/lib/ProjectTEP/.minecraft/scripts/Classes/ModularUtils.zs
zenClass MachineUtil {
    //-----------机械默认表---------------

    zenConstructor(arg as string) {
        this.id = arg;
    }
    val id as string;
    function buildMachine(name as string,machine as string,tick as int) as RecipePrimer{
        return RecipeBuilder.newBuilder(name,machine,tick);
    }
    function buildMachine(name as string,machine as string,tick as int,priority as int) as RecipePrimer{
        return RecipeBuilder.newBuilder(name,machine,tick,priority);
    }
    //输入
    function inputResister(add as RecipePrimer,energy as bool,item as bool,aura as bool,liquid as bool,howEnergy as int,whatItems as IOreDictEntry[],howItem as int,whatAura as string[int],whatLiquid as ILiquidStack[],howLiquid as int) as RecipePrimer{
        if(energy){
            add.addEnergyPerTickInput(howEnergy);
        }
        if(item){
            for items in whatItems{
                add.addItemInput(items,howItem);
            }
        }
        if(aura){
            for how,auras in whatAura{
                add.addAuraInput(auras,how);
            }
        }
        if(liquid){
            for liquids in whatLiquid{
                add.addFluidInput(liquids*howLiquid);
            }
        }
        return add;
    }
    //输出
    function outputResister(add as RecipePrimer,energy as bool,item as bool,aura as bool,liquid as bool,haveChance as bool,howEnergy as int,whatItems as IItemStack[],howItem as int,chance as float,whatAura as string[int],whatLiquid as ILiquidStack[],howLiquid as int) as RecipePrimer{
        if(energy){
            add.addEnergyPerTickOutput(howEnergy);
        }
        if(item){
            for items in whatItems{
                add.addItemOutput(items*howItem);
                if(haveChance) add.addItemOutput(items*howItem).setChance(chance);
            }
        }
        if(aura){
            for how,auras in whatAura{
                add.addAuraOutput(auras,how);
            }
        }
        if(liquid){
            for liquids in whatLiquid{
                add.addFluidOutput(liquids*howLiquid);
            }
        }
        return add;
    }
}