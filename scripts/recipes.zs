import mods.create.MixingManager;
import mods.create.HeatCondition;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import mods.create.SequencedAssemblyManager;
import crafttweaker.api.item.IItemStack;
import mods.create.CuttingManager;

//REMOVE RECIPES
var items = [
    <item:ars_nouveau:novice_spell_book>,
    <item:ars_nouveau:apprentice_spell_book>,
    <item:ars_nouveau:archmage_spell_book>,
    <item:undergarden:catalyst>,
    <item:forbidden_arcanus:mundabitur_dust>,
    <item:waystones:warp_stone>,
    <item:waystones:warp_dust>,
    <item:waystones:return_scroll>,
    <item:waystones:bound_scroll>,
    <item:waystones:warp_scroll>,
    <item:farmersrespite:green_tea_cookie>,
    <item:valhelsia_structures:bone_pile>,
    <item:biomemakeover:altar>,
    <item:quark:cactus_block>,
    <item:malum:spirit_altar>,
    <item:malum:encyclopedia_arcana>,
    <item:malum:crude_scythe>
] as IItemStack[];
for item in items {
    craftingTable.remove(item);
}

var smeltable = [
    <item:minecraft:green_dye>
] as IItemStack[];
for item in smeltable{
    furnace.remove(item);
    blastFurnace.remove(item);
}
furnace.removeByName("undergarden:smelt_catalyst");

<recipetype:create:sequenced_assembly>.remove(<item:buddycardsexp:buddycard_pack_create>);

//ADD RECIPES
craftingTable.addShapeless("novice_spell_book", <item:ars_nouveau:novice_spell_book>, 
    [<item:minecraft:book>,<item:minecraft:diamond_sword>,<item:minecraft:diamond_shovel>,<item:minecraft:diamond_pickaxe>,<item:minecraft:diamond_axe>,<item:forbidden_arcanus:mundabitur_dust>]);
craftingTable.addShapeless("apprentice_spell_book", <item:ars_nouveau:apprentice_spell_book>, 
    [<item:ars_nouveau:novice_spell_book>,<item:minecraft:diamond>,<item:minecraft:diamond>,<item:minecraft:diamond>,<item:minecraft:blaze_rod>,<item:minecraft:blaze_rod>,<item:minecraft:quartz_block>,<item:minecraft:quartz_block>,<item:forbidden_arcanus:eternal_stella>]);
craftingTable.addShapeless("archmage_spell_book", <item:ars_nouveau:archmage_spell_book>, 
    [<item:ars_nouveau:apprentice_spell_book>,<item:minecraft:nether_star>,<item:ars_nouveau:wilden_tribute>,<item:aquaculture:neptunium_ingot>,<item:minecraft:emerald>,<item:minecraft:emerald>,<item:minecraft:ender_pearl>,<item:minecraft:ender_pearl>,<item:minecraft:totem_of_undying>]);
craftingTable.addShaped("undergarden_catalyst", <item:undergarden:catalyst>, [
    [<item:forbidden_arcanus:arcane_gold_ingot>,<item:minecraft:iron_ingot>,<item:forbidden_arcanus:arcane_gold_ingot>],
    [<item:minecraft:iron_ingot>,<item:aquaculture:neptunium_ingot>,<item:minecraft:iron_ingot>],
    [<item:forbidden_arcanus:arcane_gold_ingot>,<item:minecraft:iron_ingot>,<item:forbidden_arcanus:arcane_gold_ingot>]]);
<recipetype:create:mixing>.addRecipe("mundabitur_dust_mix",<constant:create:heat_condition:none>, [<item:forbidden_arcanus:mundabitur_dust> * 4],
    [<item:forbidden_arcanus:arcane_crystal_dust>,<item:minecraft:redstone>,<item:minecraft:blaze_powder>,<item:minecraft:bone_meal>,<item:minecraft:phantom_membrane>,<item:minecraft:gunpowder>]);

<recipetype:create:mixing>.addRecipe("kang_pasta",<constant:create:heat_condition:heated>, [<item:alexsdelight:kangaroo_pasta>],
    [<item:farmersdelight:tomato_sauce>,<item:farmersdelight:raw_pasta>,<tag:items:alexsdelight:cooked_kangaroo>]);
<recipetype:create:mixing>.addRecipe("lobster_pasta",<constant:create:heat_condition:heated>, [<item:alexsdelight:lobster_pasta>],
    [<item:alexsmobs:lobster_tail>,<item:farmersdelight:tomato_sauce>,<item:farmersdelight:raw_pasta>]);
<recipetype:create:mixing>.addRecipe("blossom_soup",<constant:create:heat_condition:heated>, [<item:alexsdelight:acacia_blossom_soup>],
    [<item:alexsmobs:acacia_blossom>,<item:farmersdelight:onion>,<item:farmersdelight:raw_pasta>,<item:minecraft:bowl>]);
<recipetype:create:mixing>.addRecipe("kang_stew",<constant:create:heat_condition:heated>, [<item:alexsdelight:kangaroo_stew>],
    [<item:minecraft:carrot>,<item:minecraft:beetroot>,<tag:items:alexsdelight:cooked_kangaroo>]);

craftingTable.addShaped("warp_stone",<item:waystones:warp_stone>,
    [[<item:minecraft:purple_dye>,<item:minecraft:ender_pearl>,<item:minecraft:purple_dye>],
     [<item:minecraft:ender_pearl>,<item:forbidden_arcanus:mundabitur_dust>,<item:minecraft:ender_pearl>],
     [<item:minecraft:purple_dye>,<item:minecraft:ender_pearl>,<item:minecraft:purple_dye>]]);
craftingTable.addShapeless("warp_dust",<item:waystones:warp_dust> *4,
    [<item:minecraft:ender_pearl>,<item:forbidden_arcanus:mundabitur_dust>,<item:minecraft:purple_dye>]);
craftingTable.addShaped("return_scroll",<item:waystones:return_scroll>*3,
    [[<item:minecraft:purple_dye>,<item:ars_nouveau:manipulation_essence>,<item:minecraft:purple_dye>],
     [<item:minecraft:gold_nugget>,<item:minecraft:ender_pearl>,<item:minecraft:gold_nugget>],
     [<item:minecraft:paper>,<item:minecraft:paper>,<item:minecraft:paper>]]);
craftingTable.addShaped("bound_scroll",<item:waystones:bound_scroll> *3,
    [[<item:minecraft:purple_dye>,<item:ars_nouveau:manipulation_essence>,<item:minecraft:purple_dye>],
     [<item:minecraft:diamond>,<item:minecraft:ender_pearl>,<item:minecraft:diamond>],
     [<item:minecraft:paper>,<item:minecraft:paper>,<item:minecraft:paper>]]);
craftingTable.addShaped("warp_scroll",<item:waystones:warp_scroll>*3,
    [[<item:minecraft:purple_dye>,<item:ars_nouveau:manipulation_essence>,<item:minecraft:purple_dye>],
     [<item:createdeco:netherite_nugget>,<item:minecraft:ender_pearl>,<item:createdeco:netherite_nugget>],
     [<item:minecraft:paper>,<item:minecraft:paper>,<item:minecraft:paper>]]);
craftingTable.addShapeless("green_cookie",<item:farmersrespite:green_tea_cookie>*8,
    [<item:minecraft:wheat>,<item:farmersrespite:green_tea_leaves>,<item:minecraft:wheat>]);
craftingTable.addShapeless("heph_forge",<item:forbidden_arcanus:hephaestus_forge>,
    [<item:forbidden_arcanus:mundabitur_dust>,<item:minecraft:smithing_table>]);
craftingTable.addShaped("safety_net",<item:farmersdelight:safety_net>,
    [[<item:supplementaries:rope>,<item:supplementaries:rope>],
    [<item:supplementaries:rope>,<item:supplementaries:rope>]]);
craftingTable.addShaped("animallead",<item:minecraft:lead>,
    [[<item:supplementaries:rope>,<item:supplementaries:rope>,<item:minecraft:air>],
    [<item:supplementaries:rope>,<item:supplementaries:rope>,<item:minecraft:air>],
    [<item:minecraft:air>,<item:minecraft:air>,<item:supplementaries:rope>]]);
craftingTable.addShaped("sup_rope",<item:supplementaries:rope>*3,
    [[<item:farmersdelight:straw>],
    [<item:farmersdelight:straw>],
    [<item:farmersdelight:straw>]]);
    
craftingTable.addShapeless("chest",<item:minecraft:chest>,[<tag:items:forge:chests/wooden>]);
craftingTable.addShapeless("genebook_back",<item:minecraft:book>,[<item:horse_colors:gene_book>]);
craftingTable.addShapeless("bones",<item:minecraft:bone>*9,[<item:valhelsia_structures:bone_pile_block>]);
craftingTable.addShapeless("dark_iron",<item:graveyard:dark_iron_ingot>*9,[<item:graveyard:dark_iron_block>]);
craftingTable.addShapeless("cactus_batch",<item:quark:cactus_block>,[<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>,<tag:items:quandry:cactus>]);
craftingTable.addShaped("bone_pile",<item:valhelsia_structures:bone_pile>*3,[[<item:minecraft:bone>,<item:minecraft:bone>,<item:minecraft:bone>]]);

craftingTable.remove(<item:disenchanting:disenchanter>);
craftingTable.addShaped("disenchant",<item:disenchanting:disenchanter>,
    [[<item:forbidden_arcanus:arcane_gold_ingot>,<item:minecraft:anvil>,<item:forbidden_arcanus:arcane_gold_ingot>],
    [<item:minecraft:obsidian>,<item:minecraft:obsidian>,<item:minecraft:obsidian>]]);

blastFurnace.addJsonRecipe("smelt_nep", {
 ingredient: <item:aquaculture:neptunes_bounty>,
 result: <item:aquaculture:neptunium_ingot>.registryName,
 experience: 0.35 as float,
 cookingtime:200
 });

<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("create_pack")
                                                      .transitionTo(<item:buddycardsexp:unfinished_buddycard_pack>)
                                                      .require(<item:alloyed:bronze_sheet>)
                                                      .loops(4)
                                                      .addOutput(<item:buddycardsexp:buddycard_pack_create>,1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:buddycardsexp:recycled_buddycard>))
                                                      .addStep<mods.createtweaker.FillingRecipe>((fr) => fr.require(<fluid:minecraft:water>*125))
                                                      );

var reinforcedItems = [
    <item:forbidden_arcanus:reinforced_arcane_golden_hoe>,
    <item:forbidden_arcanus:reinforced_arcane_golden_axe>,
    <item:forbidden_arcanus:reinforced_arcane_golden_pickaxe>,
    <item:forbidden_arcanus:reinforced_arcane_golden_shovel>,
    <item:forbidden_arcanus:reinforced_arcane_golden_sword>,
    <item:forbidden_arcanus:reinforced_arcane_golden_blacksmith_gavel>
]   as IItemStack[];   
var goldItems = [
    <item:forbidden_arcanus:arcane_golden_hoe>,
    <item:forbidden_arcanus:arcane_golden_axe>,
    <item:forbidden_arcanus:arcane_golden_pickaxe>,
    <item:forbidden_arcanus:arcane_golden_shovel>,
    <item:forbidden_arcanus:arcane_golden_sword>,
    <item:forbidden_arcanus:arcane_golden_blacksmith_gavel>
] as IItemStack[];
for index, item in reinforcedItems {
    smithing.addRecipe("reinforced_arcane_"+index, item, goldItems[index], <item:forbidden_arcanus:stellarite_piece>);
}

furnace.addJsonRecipe("green_dye", {
 ingredient: <tag:items:quandry:cactus>,
 result: <item:minecraft:green_dye>.registryName,
 experience: 1 as float,
 cookingtime:200
 });
 furnace.addJsonRecipe("ash", {
 ingredient: <tag:items:minecraft:planks>,
 result: <item:supplementaries:ash>.registryName,
 experience: 1 as float,
 cookingtime:200
 });





craftingTable.addShaped("spirit_alter",<item:malum:spirit_altar>,
[
    [<item:forbidden_arcanus:arcane_gold_ingot>,<item:malum:processed_soulstone>,<item:forbidden_arcanus:arcane_gold_ingot>],
    [<item:graveyard:dark_iron_ingot>,<item:malum:runewood_planks>,<item:graveyard:dark_iron_ingot>],
    [<item:malum:runewood_planks>,<item:malum:runewood_planks>,<item:malum:runewood_planks>]
]);
craftingTable.addShapeless("encyclopedia",<item:malum:encyclopedia_arcana>,[<item:minecraft:book>,<item:graveyard:dark_iron_ingot>,<item:malum:processed_soulstone>]);
craftingTable.addShaped("scythe",<item:malum:crude_scythe>,
[
    [<item:graveyard:dark_iron_ingot>,<item:graveyard:dark_iron_ingot>,<item:malum:processed_soulstone>],
    [<item:minecraft:air>,<item:minecraft:stick>,<item:graveyard:dark_iron_ingot>],
    [<item:minecraft:stick>,<item:minecraft:air>,<item:minecraft:air>]
]);