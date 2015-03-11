//Define variables
val resizecube = <CompactMachines:resizingcube>;
val resizeinterface = <CompactMachines:interfaceitem>;
val compactmachine0 = <CompactMachines:machine:0>;
val compactmachine1 = <CompactMachines:machine:1>;
val compactmachine2 = <CompactMachines:machine:2>;
val compactmachine3 = <CompactMachines:machine:3>;
val compactmachine4 = <CompactMachines:machine:4>;
val compactmachine5 = <CompactMachines:machine:5>;
val netherstar = <minecraft:nether_star>;
val diamond = <ore:gemDiamond>;
val moonrock = <GalacticraftCore:tile.moonBlock:4>;
val marsstone = <GalacticraftMars:tile.mars:9>;
val meteoriron = <GalacticraftCore:item.meteoricIronIngot>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;
val deshingot = <GalacticraftMars:item.null:2>;
val deshplate = <GalacticraftMars:item.null:5>;
val titaniumingot = <GalacticraftMars:item.itemBasicAsteroids:5>;
val titaniumplate = <GalacticraftMars:item.itemBasicAsteroids:6>;

//-------------------
//TWEAKS START BELOW
//-------------------

//Add all asteroid rock types to the ore dictionary as "asteroidRock"
val asteroidrock = <ore:asteroidRock>;
asteroidrock.add(<GalacticraftMars:tile.asteroidsBlock:0>);
asteroidrock.add(<GalacticraftMars:tile.asteroidsBlock:1>);
asteroidrock.add(<GalacticraftMars:tile.asteroidsBlock:2>);

//Change recipe for World Resizing Cube to use Lunarium from the Moon
recipes.remove(resizecube);
recipes.addShaped(resizecube,
 [[resizeinterface, resizeinterface, null],
  [resizeinterface, lunariumplate, resizeinterface],
  [null, resizeinterface, resizeinterface]]);
//Add tooltip for World Resizing Cube
resizecube.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
resizecube.addShiftTooltip(format.darkPurple("Requires materials"));
resizecube.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for Compact Machine (Tiny) to use Moon Rock
recipes.remove(compactmachine0);
recipes.addShaped(compactmachine0,
 [[moonrock, moonrock, moonrock],
  [moonrock, resizecube, moonrock],
  [moonrock, moonrock, moonrock]]);
//Add tooltip for Compact Machine 0
compactmachine0.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
compactmachine0.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine0.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for Compact Machine (Small) to use Lunarium and Meteoric Iron from the Moon
recipes.remove(compactmachine1);
recipes.addShaped(compactmachine1,
 [[meteoriron, lunarium, meteoriron],
  [lunarium, compactmachine0, lunarium],
  [meteoriron, lunarium, meteoriron]]);
//Add tooltip for Compact Machine 1
compactmachine1.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
compactmachine1.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine1.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for Compact Machine (Normal Size) to use Desh from Mars
recipes.remove(compactmachine2);
recipes.addShaped(compactmachine2,
 [[marsstone, deshingot, marsstone],
  [deshingot, compactmachine1, deshingot],
  [marsstone, deshingot, marsstone]]);
//Add tooltip for Compact Machine 2
compactmachine2.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
compactmachine2.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine2.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

//Change recipe for Compact Machine (Big) to use Desh from Mars
recipes.remove(compactmachine3);
recipes.addShaped(compactmachine3,
 [[deshplate, deshplate, deshplate],
  [deshplate, compactmachine2, deshplate],
  [deshplate, deshplate, deshplate]]);
//Add tooltip for Compact Machine 3
compactmachine3.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
compactmachine3.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine3.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

//Change recipe for Compact Machine (Giant) to use Titanium from the Asteroids
recipes.remove(compactmachine4);
recipes.addShaped(compactmachine4,
 [[asteroidrock, titaniumingot, asteroidrock],
  [titaniumingot, compactmachine3, titaniumingot],
  [asteroidrock, titaniumingot, asteroidrock]]);
//Add tooltip for Compact Machine 4
compactmachine4.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
compactmachine4.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine4.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

//Change recipe for Compact Machine (Maximum Size) to use Titanium from the Asteroids
recipes.remove(compactmachine5);
recipes.addShaped(compactmachine5,
 [[titaniumplate, netherstar, titaniumplate],
  [netherstar, compactmachine4, netherstar],
  [titaniumplate, netherstar, titaniumplate]]);
//Add tooltip for Compact Machine 5
compactmachine5.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
compactmachine5.addShiftTooltip(format.darkPurple("Requires materials"));
compactmachine5.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));