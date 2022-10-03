#priority 99
import mods.jei.JEI;
import crafttweaker.api.data.ListData;
import crafttweaker.api.recipe.type.Recipe;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.resource.ResourceLocation;


var items = [
    <item:alloyed:steel_fishing_rod>,

    <item:ars_nouveau:rune>,
    <item:ars_nouveau:creative_source_jar>,
    <item:ars_nouveau:creative_spell_book>,

    <item:architects_palette:unobtanium>,

    <item:biomemakeover:directional_data>,

    <item:buddycards:creative_grading_sleeve>,

    <item:cataclysm:ender_guardian_spawner>,
    <item:cataclysm:ignitium_helmet>,
    <item:cataclysm:ignitium_leggings>,
    <item:cataclysm:ignitium_boots>,
    <item:cataclysm:ignitium_ingot>,
    <item:cataclysm:witherite_ingot>,
    <item:cataclysm:enderite_ingot>,
    <item:cataclysm:music_disc_netherite_monstrosity>,
    <item:cataclysm:music_disc_ender_guardian>,
    <item:cataclysm:final_fractal>,
    <item:cataclysm:zweiender>,
    <item:cataclysm:void_infused_end_stone_bricks>,
    <item:cataclysm:enderite_block>,
    <item:cataclysm:witherite_block>,
    <item:cataclysm:ignitium_block>,
    <item:cataclysm:ignitium_chestplate>,

    <item:cfm:post_box>,
    <item:cfm:fridge_dark>,
    <item:cfm:spatula>,
    <item:cfm:rock_path>,
    <item:cfm:trampoline>,
    <item:cfm:diving_board>,
    <item:cfm:fridge_light>,
    <item:cfm:door_mat>,

    <item:create:creative_fluid_tank>,
    <item:create:handheld_worldshaper>,
    <item:create:creative_motor>,
    <item:create:creative_crate>,
    <item:create:creative_blaze_cake>,
    <item:create:crushed_silver_ore>,
    <item:create_stuff_additions:crushed_tungsten>,
    <item:create_stuff_additions:tungsten_nugget>,
    <item:create_stuff_additions:crushed_unknown>,
    <item:create_stuff_additions:unkown_nugget>,
    <item:create_stuff_additions:brass_globe>,
    <item:create_stuff_additions:nixie_lamp>,
    <item:create_stuff_additions:nozzle_fan>,

    <item:darkerdepths:raw_silver>,
    <item:darkerdepths:silver_block>,
    <item:darkerdepths:raw_silver_block>,
    <item:darkerdepths:silver_ingot>,
    <item:darkerdepths:aridrock_silver_ore>,
    <item:darkerdepths:silver_ore>,
    <item:darkerdepths:limestone_silver_ore>,
    <item:darkerdepths:resin>,
    <item:darkerdepths:rope>,

    <item:doggytalents:doggy_charm>,
    <item:doggytalents:owner_change>,
    <item:doggytalents:creative_collar>,
    <item:doggytalents:creative_radar>,

    <item:everycomp:q/forbidden_arcanus/mysterywood_chest>,
    <item:everycomp:q/forbidden_arcanus/mysterywood_trapped_chest>,
    <item:everycomp:mcw/byg/stripped_imparius_log_window2>,
    <item:everycomp:mcw/forbidden_arcanus/stripped_fungyss_log_window2>,
    <item:everycomp:mcw/valhelsia_structures/stripped_lapidified_jungle_log_window2>,
    <item:everycomp:mcw/forbidden_arcanus/stripped_edelwood_log_window2>,

    <item:farmersdelight:wheat_dough>,
    <item:farmersdelight:rope>,

    <item:forbidden_arcanus:silver_dragon_scale>,

    <item:horse_colors:gender_change_item>,

    <item:littlelogistics:energy_locomotive>,
    <item:littlelogistics:energy_tug>,
    <item:littlelogistics:vessel_charger>,
    <item:littlelogistics:creative_capacitor>,
    
    <item:lootr:trophy>,

    <item:malum:tin_impetus>,
    <item:malum:silver_impetus>,
    <item:malum:silver_node>,
    <item:malum:tin_node>,
    <item:malum:osmium_node>,
    <item:malum:uranium_node>,
    <item:malum:nickel_node>,
    <item:malum:aluminum_node>,
    <item:malum:lead_node>,
    <item:malum:cracked_silver_impetus>,
    <item:malum:cracked_tin_impetus>,
    <item:malum:cracked_osmium_impetus>,
    <item:malum:cracked_uranium_impetus>,
    <item:malum:cracked_nickel_impetus>,
    <item:malum:cracked_aluminum_impetus>,
    <item:malum:cracked_lead_impetus>,
    <item:malum:lead_impetus>,
    <item:malum:aluminum_impetus>,
    <item:malum:nickel_impetus>,
    <item:malum:uranium_impetus>,
    <item:malum:osmium_impetus>,

    <item:mcwdoors:metal_hospital_door>,
    <item:mcwdoors:metal_warning_door>,
    <item:mcwdoors:metal_door>,
    <item:mcwdoors:metal_windowed_door>,
    <item:mcwtrpdoors:metal_trapdoor>,
    <item:mcwtrpdoors:metal_full_trapdoor>,
    <item:mcwtrpdoors:metal_warning_trapdoor>,
    <item:mcwdoors:metal_reinforced_door>,
    <item:mcwdoors:jail_door>,
    <item:mcwdoors:garage_silver_door>,
    <item:mcwdoors:garage_white_door>,
    <item:mcwdoors:garage_black_door>,
    <item:mcwwindows:stone_brick_gothic>,
    <item:mcwwindows:end_brick_gothic>,
    <item:mcwwindows:nether_brick_gothic>,
    <item:mcwwindows:prismarine_brick_gothic>,
    <item:mcwdoors:garage_gray_door>,
    <item:mcwwindows:cobblestone_arrow_slit>,
    <item:mcwwindows:stone_brick_arrow_slit>,
    <item:mcwwindows:ender_brick_arrow_slit>,
    <item:mcwwindows:nether_brick_arrow_slit>,

    <item:minecraft:enchanting_table>,
    <item:minecraft:enchanted_book>,
    <item:minecraft:structure_block>,
    <item:minecraft:structure_void>,
    <item:minecraft:jigsaw>,
    <item:minecraft:spawner>,
    <item:minecraft:command_block>,
    <item:minecraft:repeating_command_block>,
    <item:minecraft:chain_command_block>,
    <item:minecraft:debug_stick>,
    <item:minecraft:bundle>,
    <item:minecraft:lingering_potion>,
    <item:minecraft:potion>,
    <item:minecraft:splash_potion>,
    <item:minecraft:tipped_arrow>,
    
    <item:sophisticatedbackpacks:tank_upgrade>,
    <item:sophisticatedbackpacks:battery_upgrade>,
    <item:sophisticatedbackpacks:pump_upgrade>,
    <item:sophisticatedbackpacks:advanced_pump_upgrade>,
    <item:sophisticatedbackpacks:xp_pump_upgrade>,
    <item:sophisticatedbackpacks:inception_upgrade>,
    <item:sophisticatedbackpacks:tool_swapper_upgrade>,
    <item:sophisticatedbackpacks:advanced_tool_swapper_upgrade>,
    
    <item:storagedrawers:creative_vending_upgrade>,
    <item:storagedrawers:creative_storage_upgrade>,

    <item:supplementaries:silver_door>,
    <item:supplementaries:silver_trapdoor>,
    <item:supplementaries:silver_lantern>,

    <item:quark:ancient_tome>,

    <item:valhelsia_structures:special_spawner>,
    <item:valhelsia_structures:dungeon_door>,

    <item:undergarden:catalyst>
] as IItemStack[];
for item in items{
    JEI.hideIngredient(item);
    craftingTable.remove(item);
}

//Hide Mods
var modNames = [
    "itemfilters",
    "ftbquests",
    "structure_gel",
    "sophisticatedcore"
] as string[];
for name in modNames {
    JEI.hideMod(name);
}

//Regex
var regexs = [
    ".*spawn_egg.*",
    "ars_nouveau:\\w*se",
    "createdeco:\\w*coin",
    "createdeco:\\w*coinstack",
    "theoneprobe.*",
    "farmersdelight:.*lead.*",
    "everycomp:cfm/.*blinds",
    "cfm:.*blinds",
    "everycomp:cfm/.*hedge",
    "cfm:.*hedge",
    "cfm:.*picket_fence",
    "cfm:.*picket_gate",
    "cfm:.*cooler",
    "cfm:(white|orange|magenta|light_blue|yellow|lime|pink|gray|light_gray|cyan|purple|blue|brown|green|red|black)_(kitchen_drawer|kitchen_counter)",
    ".*kitchen_sink.*",
    "cfm:.*grill",
    ".*buddycard_(base|end|nether|create|aqua|malum|farmers).*"
] as string[];
for reg in regexs {
    JEI.hideRegex(reg);
    craftingTable.removeByRegex(reg);
}

//enchants
var enchants = [
    ".*bane_of_arthropods.*",
    ".*aqua_affinity.*",
    ".*blast_protection.*",
    ".*depth_strider.*",
    ".*efficiency.*",
    ".*feather_falling.*",
    ".*unbreaking.*",
    ".*thorns.*",
    ".*sweeping.*",
    ".*smite.*",
    ".*silk_touch.*",
    ".*sharpness.*",
    ".*respiration.*",
    ".*reactive.*",
    ".*quick_charge.*",
    ".*punch.*",
    ".*protection.*",
    ".*power.*",
    ".*piercing.*",
    ".*multishot.*",
    ".*mana_regen.*",
    ".*fire_aspect.*",
    ".*fire_protection.*",
    ".*flame.*",
    ".*fortune.*",
    ".*infinity.*",
    ".*knockback.*",
    ".*mana_boost.*",
    ".*looting.*"
] as string[];
for enchant in enchants {
<recipetype:ars_nouveau:enchantment>.removeByRegex(enchant);
}

//exceptions
furnace.removeByModid("libraryferret");
craftingTable.removeByModid("libraryferret");

var hiddenItems = [
    <item:valhelsia_structures:lapidified_jungle_fence_gate>,
    <item:valhelsia_structures:lapidified_jungle_fence>,
    <item:valhelsia_structures:lapidified_jungle_button>,
    <item:valhelsia_structures:lapidified_jungle_pressure_plate>,
    <item:valhelsia_structures:lapidified_jungle_stairs>,
    <item:valhelsia_structures:lapidified_jungle_slab>,
    <item:valhelsia_structures:lapidified_jungle_planks>,
    <item:valhelsia_structures:lapidified_jungle_wood>,
    <item:valhelsia_structures:lapidified_jungle_log>
 ] as IItemStack[];
for item in hiddenItems {
    JEI.addIngredient(item);
}