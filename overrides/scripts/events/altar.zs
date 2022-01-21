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
            }else{attempt.message = game.localize("ans.message.skeletonkingspawn.success");}
        })
);
//猪
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*16,<minecraft:bone>*16])
        .addMob(MobInfo.create()
            .setMob("minecraft:pig")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//鸡
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:bone>*1,<minecraft:feather>])
        .addMob(MobInfo.create()
            .setMob("minecraft:chicken")
            .setData({"Health": 8, "Attributes":[{"Name":"generic.maxHealth","Base":8}]})
        )
);
//狼
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*10,<minecraft:bone>*4,<minecraft:leather>*4])
        .addMob(MobInfo.create()
            .setMob("minecraft:wolf")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//牛
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*16,<minecraft:bone>*16,<minecraft:spider_eye>*2,<minecraft:leather>*4])
        .addMob(MobInfo.create()
            .setMob("minecraft:cow")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//羊
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*12,<minecraft:bone>*16,<minecraft:wool>*2])
        .addMob(MobInfo.create()
            .setMob("minecraft:sheep")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//马
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*16,<minecraft:bone>*16,<minecraft:saddle>])
        .addMob(MobInfo.create()
            .setMob("minecraft:horse")
            .setData({"Health": 24, "Attributes":[{"Name":"generic.maxHealth","Base":24}]})
        )
);
//羊驼
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:bone>*16,<minecraft:carrot_on_a_stick>])
        .addMob(MobInfo.create()
            .setMob("minecraft:llama")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//哞菇
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:bone>*16,<minecraft:red_mushroom>*4])
        .addMob(MobInfo.create()
            .setMob("minecraft:mooshroom")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//豹猫
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:bone>*5,<minecraft:fish>])
        .addMob(MobInfo.create()
            .setMob("minecraft:ocelot")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//鹦鹉
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:bone>*2,<minecraft:dye:3>])
        .addMob(MobInfo.create()
            .setMob("minecraft:parrot")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//墨鱼
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:dye>])
        .addMob(MobInfo.create()
            .setMob("minecraft:squid")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
//兔子
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<naturesaura:birth_spirit>)
        .setReagents([<biomesoplenty:fleshchunk>*4,<minecraft:bone>*3,<minecraft:dye:4>])
        .addMob(MobInfo.create()
            .setMob("minecraft:rabbit")
            .setData({"Health": 20, "Attributes":[{"Name":"generic.maxHealth","Base":20}]})
        )
);
