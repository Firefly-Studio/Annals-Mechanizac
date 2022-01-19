import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<natura:bloodwood_sword>)
        .setReagents([<mod_lavacow:kings_crown:1>,<minecraft:diamond>*64,<minecraft:bone>*64,<minecraft:bone>*64,<minecraft:nether_star>])
        .addMob(MobInfo.create()
            .setMob("mod_lavacow:skeletonking")
            .setData({"Health": 2048, "Attributes":[{"Name":"generic.maxHealth","Base":2048}]})
        )
        .setMutator(function (attempt as SummoningAttempt) {
            if (attempt.world.dimension != -1) {
                attempt.success = false;
            }else{attempt.message = "旧主已经诞生！";}
        })
);