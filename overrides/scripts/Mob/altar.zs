import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import crafttweaker.item.IIngredient;
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<combustfish:tempered_swordfish>)
        .setReagents([<mod_lavacow:emblem_of_king>*10,<customrecord:intro>,<minecraft:emerald>*64,<mod_lavacow:kings_crown:1>,<minecraft:nether_star>*4])
        .addMob(MobInfo.create()
            .setMob("dungeonmobs:dmeldermob")
            .setData({Attributes:[{Name:"generic.maxHealth",Base:1200.0d},{Name:"generic.attackDamage",Base:20.0d},{Name:"generic.armor",Base:15.0d}],Health:1200.0f})
        )
        .setMutator(function (attempt as SummoningAttempt) {
            if (attempt.world.dimension != -1) {
                attempt.success = false;
            }else{attempt.message = game.localize("ans.message.dmeldermob.success");}
        })
);

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<natura:bloodwood_sword>)
        .setReagents([<mod_lavacow:kings_crown:1>,<minecraft:diamond>*64,<minecraft:bone>*64,<minecraft:bone>*64,<minecraft:nether_star>])
        .addMob(MobInfo.create()
            .setMob("mod_lavacow:skeletonking")
            .setData({Attributes:[{Name:"generic.maxHealth",Base:2000.0d},{Name:"generic.attackDamage",Base:40.0d},{Name:"generic.armor",Base:40.0d}],Health:2000.0f})
        )
        .setMutator(function (attempt as SummoningAttempt) {
            if (attempt.world.dimension != -1) {
                attempt.success = false;
            }else{attempt.message = game.localize("ans.message.skeletonkingspawn.success");}
        })
);
var ingredient as IIngredient[][string]={
    "minecraft:pig":[<biomesoplenty:fleshchunk>*16,<minecraft:bone>*16],
    "minecraft:chicken":[<biomesoplenty:fleshchunk>*4,<minecraft:bone>*1,<minecraft:feather>],
    "minecraft:wolf":[<biomesoplenty:fleshchunk>*10,<minecraft:bone>*4,<minecraft:leather>*4],
    "minecraft:cow":[<biomesoplenty:fleshchunk>*16,<minecraft:bone>*16,<minecraft:spider_eye>*2,<minecraft:leather>*4],
    "minecraft:sheep":[<biomesoplenty:fleshchunk>*12,<minecraft:bone>*16,<minecraft:wool>*2],
    "minecraft:horse":[<biomesoplenty:fleshchunk>*16,<minecraft:bone>*16,<minecraft:saddle>],
    "minecraft:llama":[<biomesoplenty:fleshchunk>*4,<minecraft:bone>*16,<minecraft:carrot_on_a_stick>],
    "minecraft:mooshroom":[<biomesoplenty:fleshchunk>*4,<minecraft:bone>*16,<minecraft:red_mushroom>*4],
    "minecraft:ocelot":[<biomesoplenty:fleshchunk>*4,<minecraft:bone>*5,<minecraft:fish>],
    "minecraft:parrot":[<biomesoplenty:fleshchunk>*4,<minecraft:bone>*2,<minecraft:dye:3>],
    "minecraft:squid":[<biomesoplenty:fleshchunk>*4,<minecraft:dye>],
    "minecraft:rabbit":[<biomesoplenty:fleshchunk>*4,<minecraft:bone>*3,<minecraft:dye:4>],
    "ebwizardry:wizard":[<ebwizardry:arcane_tome:1>,<enderskills:token>,<contenttweaker:pearl_orange>,<hammercore:emerald_bordered_cobblestone>]
    
};
function summon(mob as string,input as IIngredient[]){
    SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents(input)
        .addMob(MobInfo.create()
            .setMob(mob)
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
}
for mob,input in ingredient{
    summon(mob,input);
}
