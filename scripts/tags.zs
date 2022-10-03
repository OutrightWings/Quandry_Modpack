#priority 100
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;

//Fish
var rawFish = <tag:items:forge:raw_fishes>;
var cookedFish = <tag:items:forge:cooked_fishes>;

var raws = [<item:alexsdelight:raw_catfish_slice>,
             <item:alexsmobs:raw_catfish>,
             <item:aquaculture:fish_fillet_raw>] as IIngredient[];
var cooked = [<item:alexsdelight:cooked_catfish_slice>,
               <item:alexsmobs:cooked_catfish>,
               <item:aquaculture:fish_fillet_cooked>] as IIngredient[];

rawFish.add(raws as stdlib.List<IIngredient>);
cookedFish.add(cooked as stdlib.List<IIngredient>);

//Cookies
<tag:items:supplementaries:cookies>.add(<item:buddycardsexp:buddycookie>);

//ash
var ashes = [
    <item:darkerdepths:ash>,
    <item:darkerdepths:ash_block>,
    <item:byg:subzero_ash_block>
]as IIngredient[];
<tag:items:forge:dusts>.add(ashes as stdlib.List<IIngredient>);
<tag:items:forge:dusts/ash>.add(ashes as stdlib.List<IIngredient>);
<tag:items:forge:ash>.add(ashes as stdlib.List<IIngredient>);

//are crafted with enchanting
var immune = [
    <item:forbidden_arcanus:slimec_pickaxe>,
] as IIngredient[];
<tag:items:disenchanting:disenchanter_immune>.add(immune as stdlib.List<IIngredient>);

//Flowerbox
var notFlowers = [<item:byg:pollen_block>,
                  <item:byg:flowering_palo_verde_leaves>,
                  <item:byg:flowering_indigo_jacaranda_leaves>,
                  <item:byg:flowering_jacaranda_leaves>,
                  <item:byg:flowering_nightshade_leaves>,
                  <item:byg:flowering_orchard_leaves>,
                  <item:byg:white_puffball_cap>
                  ] as IItemStack[];
for item in notFlowers{
    <tag:items:supplementaries:flower_box_plantable>.remove(item);
}
//CACTUSSSS
var cactuses = [
    <item:biomemakeover:saguaro_cactus>,
    <item:byg:flowering_barrel_cactus>,
    <item:biomemakeover:barrel_cactus>,
    <item:biomemakeover:barrel_cactus_flowered>,
    <item:byg:barrel_cactus>,
    <item:byg:carved_barrel_cactus>,
    <item:byg:mini_cactus>,
    <item:byg:prickly_pear_cactus>,
    <item:byg:golden_spined_cactus>,
    <item:minecraft:cactus>
] as IItemStack[];
for cac in cactuses{
    <tag:items:byg:green_dye>.remove(cac);
}
var cactusTag = <tag:items:quandry:cactus>;
cactusTag.add(cactuses as stdlib.List<IItemStack>);

//potions
var reagents = [
    <item:minecraft:magma_cream>,
    <item:minecraft:blaze_powder>,
    <item:alexsmobs:bear_fur>,
    <item:alexsmobs:bone_serpent_tooth>,
    <item:aquaculture:jellyfish>,
    <item:aquaculture:leech>,
    <item:minecraft:nether_wart>,
    <item:undergarden:gloomgourd>,
    <item:undergarden:veil_mushroom>,
    <item:alexsmobs:dropbear_claw>,
    <item:alexsmobs:soul_heart>,
    <item:alexsmobs:cockroach_wing>,
    <item:alexsmobs:centipede_leg>,
    <item:alexsmobs:gazelle_horn>,
    <item:biomemakeover:moth_scales>,
    <item:minecraft:golden_carrot>,
    <item:quark:golden_frog_leg>,
    <item:forbidden_arcanus:strange_root>,
    <item:minecraft:spider_eye>,
    <item:undergarden:droopvine_item>,
    <item:minecraft:pufferfish>,
    <item:minecraft:sugar>,
    <item:minecraft:ghast_tear>,
    <item:minecraft:fermented_spider_eye>,
    <item:quark:crab_shell>,
    <item:ars_nouveau:wilden_spike>,
    <item:ars_nouveau:wilden_wing>,
    <item:ars_nouveau:wilden_horn>,
    <item:minecraft:phantom_membrane>,
    <item:minecraft:rabbit_foot>,
    <item:minecraft:glistering_melon_slice>,
    <item:ars_nouveau:abjuration_essence>,
    <item:minecraft:turtle_helmet>,
    <item:undergarden:blood_mushroom_globule>,
    <item:alexsmobs:poison_bottle>,
    <item:alexsmobs:lava_bottle>,
    <item:alexsmobs:komodo_spit_bottle>,
    <item:minecraft:brewing_stand>,
    <item:ars_nouveau:potion_flask>,
    <item:ars_nouveau:potion_flask_extend_time>,
    <item:ars_nouveau:potion_flask_amplify>,
    <item:alexsmobs:komodo_spit>,
    <item:alexsmobs:rattlesnake_rattle>,
    <item:biomemakeover:wart>,
    <item:ars_nouveau:magebloom>,
    <item:ars_nouveau:source_berry>
] as IIngredient[];

var potionTag = <tag:items:quandry:potion>;
potionTag.add(reagents as stdlib.List<IIngredient>);