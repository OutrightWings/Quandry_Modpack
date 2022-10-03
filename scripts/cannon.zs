import mods.create.SequencedAssemblyManager;
import crafttweaker.api.item.IItemStack;
import mods.create.CuttingManager;

var chambers = [<item:createbigcannons:wrought_iron_cannon_chamber>,
                <item:createbigcannons:cast_iron_cannon_chamber>,
                <item:createbigcannons:bronze_cannon_chamber>,
                <item:createbigcannons:steel_cannon_chamber>,
                <item:createbigcannons:nether_gunmetal_cannon_chamber>] as IItemStack[];
var breeches = [<item:minecraft:air>,
                <item:createbigcannons:cast_iron_sliding_breech>,
                <item:createbigcannons:bronze_sliding_breech>,
                <item:createbigcannons:steel_sliding_breech>,
                <item:minecraft:air>] as IItemStack[];
var barrels = [<item:minecraft:air>,
               <item:createbigcannons:cast_iron_cannon_barrel>,
               <item:createbigcannons:bronze_cannon_barrel>,
               <item:createbigcannons:steel_cannon_barrel>,
               <item:createbigcannons:nether_gunmetal_cannon_barrel>] as IItemStack[];
var ends = [<item:createbigcannons:wrought_iron_cannon_end>,
            <item:createbigcannons:cast_iron_cannon_end>,
            <item:createbigcannons:bronze_cannon_end>,
            <item:minecraft:air>,
            <item:minecraft:air>] as IItemStack[];
var screws = [<item:minecraft:air>,
              <item:minecraft:air>,
              <item:minecraft:air>,
              <item:createbigcannons:steel_screw_breech>,
              <item:createbigcannons:nether_gunmetal_screw_breech>] as IItemStack[];
var start = [<item:minecraft:iron_block>,
             <item:createdeco:cast_iron_block>,
             <item:alloyed:bronze_block>,
             <item:alloyed:steel_block>,
             <item:createdeco:netherite_nugget>] as IItemStack[];

for index, start_item in start {
    if(index != 4){
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("chamber"+index)
                                                      .transitionTo(chambers[index])
                                                      .require(start_item)
                                                      .loops(1)
                                                      .addOutput(chambers[index], 1)

                                                      .addStep<mods.createtweaker.FillingRecipe>((fr) => fr.require(<fluid:minecraft:lava>*1000))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forbidden_arcanus:blacksmith_gavel>)));
    }
    else{
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("chamber"+index)
                                                      .transitionTo(chambers[index])
                                                      .require(start[1])
                                                      .loops(1)
                                                      .addOutput(chambers[index], 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(start_item))
                                                      .addStep<mods.createtweaker.FillingRecipe>((fr) => fr.require(<fluid:minecraft:lava>*1000))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forbidden_arcanus:blacksmith_gavel>)));
    }
    
    if (!breeches[index].matches(<item:minecraft:air>)) {
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("breech"+index)
                                                      .transitionTo(breeches[index])
                                                      .require(chambers[index])
                                                      .loops(1)
                                                      .addOutput(breeches[index], 1)

                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:cogwheel>)));
    }
    if (!barrels[index].matches(<item:minecraft:air>)) {
        <recipetype:create:cutting>.addRecipe("barrel"+index, barrels[index], chambers[index]);
    }
    if (!ends[index].matches(<item:minecraft:air>)) {
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("end"+index)
                                                      .transitionTo(ends[index])
                                                      .require(chambers[index])
                                                      .loops(1)
                                                      .addOutput(ends[index], 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_ingot>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );
    }
    if (!screws[index].matches(<item:minecraft:air>)) {
        <recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("screws"+index)
                                                      .transitionTo(screws[index])
                                                      .require(chambers[index])
                                                      .loops(1)
                                                      .addOutput(screws[index], 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:create:shaft>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );
    }
}
//wooden
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("chamber5")
                                                      .transitionTo(<item:createbigcannons:log_cannon_chamber>)
                                                      .require(<item:minecraft:oak_log>)
                                                      .loops(1)
                                                      .addOutput(<item:createbigcannons:log_cannon_chamber>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<tag:items:forbidden_arcanus:blacksmith_gavel>)));
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("end5")
                                                      .transitionTo(<item:createbigcannons:log_cannon_end>)
                                                      .require(<item:createbigcannons:log_cannon_chamber>)
                                                      .loops(1)
                                                      .addOutput(<item:createbigcannons:log_cannon_end>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:oak_planks>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );
//Other blocks
craftingTable.addShaped("yaw",<item:createbigcannons:yaw_controller>,
                    [[<item:minecraft:air>,<item:create:shaft>,<item:minecraft:air>],
                     [<item:minecraft:iron_ingot>,<item:create:andesite_casing>,<item:minecraft:iron_ingot>],
                     [<item:minecraft:air>,<item:create:shaft>,<item:minecraft:air>]]);   
craftingTable.addShaped("mount",<item:createbigcannons:cannon_mount>,
                    [[<item:create:shaft>],
                     [<item:minecraft:iron_block>],
                     [<item:createbigcannons:yaw_controller>]]); 
craftingTable.addShaped("loader",<item:createbigcannons:cannon_loader>,
                    [[<item:minecraft:air>,<tag:items:minecraft:wooden_slabs>,<item:minecraft:air>],
                     [<item:minecraft:iron_ingot>,<item:create:andesite_casing>,<item:minecraft:iron_ingot>],
                     [<item:minecraft:air>,<item:create:piston_extension_pole>,<item:minecraft:air>]]);      
craftingTable.addShapeless("worm_head",<item:createbigcannons:worm_head>,[<item:create:piston_extension_pole>,<item:createdeco:iron_mesh_fence>]); 
craftingTable.addShapeless("ram_head",<item:createbigcannons:ram_head>,[<item:create:piston_extension_pole>,<tag:items:minecraft:wooden_slabs>]);     
//rounds
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("powder")
                                                      .transitionTo(<item:createbigcannons:powder_charge>)
                                                      .require(<tag:items:minecraft:wool>)
                                                      .loops(1)
                                                      .addOutput(<item:createbigcannons:powder_charge>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:quark:gunpowder_sack>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("shrapnal")
                                                      .transitionTo(<item:createbigcannons:shrapnel_shell>)
                                                      .require(<item:createdeco:iron_sheet_metal>)
                                                      .loops(1)
                                                      .addOutput(<item:createbigcannons:shrapnel_shell>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:quark:gunpowder_sack>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );      
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("heshell")
                                                      .transitionTo(<item:createbigcannons:he_shell>)
                                                      .require(<item:minecraft:tnt>)
                                                      .loops(1)
                                                      .addOutput(<item:createbigcannons:he_shell>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createdeco:cast_iron_ingot>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );  
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("solid")
                                                      .transitionTo(<item:createbigcannons:solid_shot>)
                                                      .require(<item:minecraft:iron_block>)
                                                      .loops(1)
                                                      .addOutput(<item:createbigcannons:solid_shot>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:createdeco:cast_iron_ingot>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );  
<recipetype:create:sequenced_assembly>.addRecipe(<recipetype:create:sequenced_assembly>.builder("grapeshot")
                                                      .transitionTo(<item:createbigcannons:bag_of_grapeshot>)
                                                      .require(<tag:items:minecraft:wool>)
                                                      .loops(3)
                                                      .addOutput(<item:createbigcannons:bag_of_grapeshot>, 1)
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:iron_nugget>))
                                                      .addStep<mods.createtweaker.DeployerApplicationRecipe>((rb) => rb.require(<item:minecraft:gunpowder>))
                                                      .addStep<mods.createtweaker.PressingRecipe>()
                                                      );
craftingTable.addShapeless("impact",<item:createbigcannons:impact_fuze>,[<item:createdeco:cast_iron_ingot>,<item:minecraft:gunpowder>,<item:create:brass_nugget>]);
craftingTable.addShapeless("timed",<item:createbigcannons:timed_fuze>,[<item:createdeco:cast_iron_ingot>,<item:minecraft:redstone>,<item:create:zinc_nugget>]);                                                                                                                                                                                                                                                                                                                                                              

