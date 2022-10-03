import crafttweaker.api.data.MapData;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.data.IData;
import crafttweaker.api.data.ListData;
import mods.aquaculture.FishData;
import crafttweaker.api.item.ItemDefinition;

public function addCuttingRecipe(RecipeName as string, Result as IItemStack[], MyTool as IIngredient, inputs as IIngredient) as void  {
  var Outputs = new ListData(["Pray it works"] as IData) as ListData;
  Outputs.clear();
  for myitem in Result {
    var data = (myitem as IData) as MapData;
    data.put("count", myitem.amount);
    Outputs.add(data);
  }
<recipetype:farmersdelight:cutting>.addJsonRecipe("cutting/" + RecipeName, {
    "type": "farmersdelight:cutting",
    "ingredients": [inputs],
    "tool": MyTool,
    "result": Outputs
  });
}
public function addCookingRecipe(RecipeName as string, Result as IItemStack, MyContainer as IItemStack = <item:minecraft:air>, Ticks as int = 200, inputs as IIngredient[]) as void  {
  var ingredients = new ListData(["pray it works"] as IData) as ListData;
  ingredients.clear();
  for myitem in inputs {ingredients.add(myitem);}
  <recipetype:farmersdelight:cooking>.addJsonRecipe(RecipeName, {
      "type": "farmersdelight:cooking",
      "ingredients": ingredients,
      "result": Result,
      "container": {
            "item" : MyContainer.registryName
            },
        //"experience": exp,
      "cookingtime": Ticks
    });
}
//raw fish fillet on cutting board section
craftingTable.remove(<item:aquaculture:fish_fillet_raw>);

var tool = <tag:items:forge:fillet_knife>;

var fishes = [
    
    <item:aquaculture:blackfish>,
    <item:aquaculture:pacific_halibut>,
    <item:aquaculture:atlantic_halibut>,
    <item:aquaculture:atlantic_herring>,
    
    <item:aquaculture:pollock>,
    <item:aquaculture:rainbow_trout>,
    <item:aquaculture:bayad>,
    <item:aquaculture:boulti>,
    <item:aquaculture:capitaine>,
    <item:aquaculture:synodontis>,
    <item:aquaculture:smallmouth_bass>,
    <item:aquaculture:bluegill>,
    <item:aquaculture:brown_trout>,
    <item:aquaculture:carp>,
    <item:aquaculture:catfish>,
    <item:aquaculture:gar>,
    <item:aquaculture:minnow>,
    <item:aquaculture:muskellunge>,
    <item:aquaculture:perch>,
    <item:aquaculture:arapaima>,
    <item:aquaculture:piranha>,
    <item:aquaculture:tambaqui>,
    <item:aquaculture:red_grouper>,
    <item:aquaculture:tuna>,
    <item:aquaculture:goldfish>,
    <item:minecraft:pufferfish>,
    <item:minecraft:tropical_fish>,
    <item:crittersandcompanions:koi_fish>,
    <item:alexsmobs:blobfish>,
    <item:alexsmobs:flying_fish>,
    <item:biomemakeover:glowfish>
 ] as IIngredient[];
var count = [
       2,12,14,1,  2,2,4,
    1,10,1,2,1,2,2,6,4,
    1,3,1,10,1,3,3,10,1,
    1,1,1,2,1,2
 ] as int[];

for index, fish in fishes{
    addCuttingRecipe("fish"+index,[<item:aquaculture:fish_fillet_raw>*count[index],<item:aquaculture:fish_bones>],tool,fish);
}
addCuttingRecipe("atlantic_cod",[<item:farmersdelight:cod_slice>*6,<item:aquaculture:fish_bones>],tool,<item:aquaculture:atlantic_cod>);
addCuttingRecipe("pink_salmon",[<item:farmersdelight:salmon_slice>*2,<item:aquaculture:fish_bones>],tool,<item:aquaculture:pink_salmon>);



var aquaFishes = [
    <item:aquaculture:atlantic_cod>,
    <item:aquaculture:blackfish>,
    <item:aquaculture:pacific_halibut>,
    <item:aquaculture:atlantic_halibut>,
    <item:aquaculture:atlantic_herring>,
    <item:aquaculture:pink_salmon>,
    <item:aquaculture:pollock>,
    <item:aquaculture:rainbow_trout>,
    <item:aquaculture:bayad>,
    <item:aquaculture:boulti>,
    <item:aquaculture:capitaine>,
    <item:aquaculture:synodontis>,
    <item:aquaculture:smallmouth_bass>,
    <item:aquaculture:bluegill>,
    <item:aquaculture:brown_trout>,
    <item:aquaculture:carp>,
    <item:aquaculture:catfish>,
    <item:aquaculture:gar>,
    <item:aquaculture:muskellunge>,
    <item:aquaculture:perch>,
    <item:aquaculture:arapaima>,
    <item:aquaculture:piranha>,
    <item:aquaculture:tambaqui>,
    <item:aquaculture:red_grouper>,
    <item:aquaculture:tuna>,
    <item:minecraft:pufferfish>,
    <item:minecraft:salmon>,
    <item:minecraft:cod>
 ] as IItemStack[];

for fish in aquaFishes{
  mods.aquaculture.FishData.remove(fish);
}