//Define variables
val elecgear = <ore:gearElectrum>;
val invgear = <ore:gearInvar>;
val tingear = <ore:gearTin>;
val irongear = <ore:gearIron>;
val copgear = <ore:gearCopper>;
val bzgear = <ore:gearBronze>;
val qtzpick = <appliedenergistics2:item.ToolNetherQuartzPickaxe>;
val quarry = <BuildCraft|Factory:machineBlock>;

//==================
//TWEAKS START BELOW
//==================

//Change recipe for Quarry to use different gears and a Nether Quartz Pickaxe
recipes.remove(quarry);
recipes.addShaped(quarry,
 [[irongear, <minecraft:redstone>, irongear],
  [bzgear, irongear, bzgear],
  [elecgear, qtzpick, elecgear]]);
//Add tooltip for Quarry
quarry.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
quarry.addShiftTooltip(format.darkPurple("Requires materials"));
quarry.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Nether"));
quarry.addShiftTooltip(format.red("One-time use per block"));
  
