import loottweaker.LootTweaker;
import crafttweaker.item.IItemStack;
import loottweaker.vanilla.loot.LootPool;

function mainPoolGetter(tableName as string) as LootPool {
    return LootTweaker.getTable(tableName).getPool("main");
}

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<inventoryneko:neko>, 14, "kawaiineko");

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<mod_lavacow:hatred_shard>, 13, "shard");

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<mod_lavacow:kings_crown>, 7, "crown");

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<minecraft:record_cat>, 7, "recordCat");

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:growth"}), 5, "scroll_1");

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<improvableskills:scroll_normal>.withTag({Skill: "improvableskills:generic_protection"}), 4, "scroll_2");

mainPoolGetter("minecraft:chests/nether_bridge")
    .addItemEntry(<ebwizardry:astral_diamond>, 14, "aof");
