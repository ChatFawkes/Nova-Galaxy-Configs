# Defined Variables
val calcpress = <appliedenergistics2:item.ItemMultiMaterial:13>;
val engpress = <appliedenergistics2:item.ItemMultiMaterial:14>;
val logipress = <appliedenergistics2:item.ItemMultiMaterial:15>;
val silipress = <appliedenergistics2:item.ItemMultiMaterial:19>;
val metironplate = <GalacticraftCore:item.meteoricIronIngot:1>;
val purecertus = <appliedenergistics2:item.ItemMultiMaterial:10>;
val gold = <ore:ingotGold>;
val diamond = <minecraft:diamond>;
val silicon = <ore:itemSilicon>;
val skystone = <appliedenergistics2:tile.BlockSkyStone:1>;
val purefluix = <appliedenergistics2:item.ItemMultiMaterial:12>;
val deshplate = <GalacticraftMars:item.null:5>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;

# Make recipe for Calculation (Pure Certus) Press
recipes.addShaped(calcpress,
 [[metironplate, deshplate, metironplate],
  [deshplate, purecertus, deshplate],
  [metironplate, deshplate, metironplate]]);
calcpress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
calcpress.addShiftTooltip(format.darkPurple("Requires materials"));
calcpress.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));
  
# Make recipe for Engineering (Diamond) Press
recipes.addShaped(engpress,
 [[metironplate, deshplate, metironplate],
  [deshplate, diamond, deshplate],
  [metironplate, deshplate, metironplate]]);
engpress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
engpress.addShiftTooltip(format.darkPurple("Requires materials"));
engpress.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));
  
# Make recipe for Logic (Gold) Press
recipes.addShaped(logipress,
 [[metironplate, deshplate, metironplate],
  [deshplate, gold, deshplate],
  [metironplate, deshplate, metironplate]]);
logipress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
logipress.addShiftTooltip(format.darkPurple("Requires materials"));
logipress.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars")); 

# Make recipe for Silicon Press
recipes.addShaped(silipress,
  [[metironplate, deshplate, metironplate],
  [deshplate, silicon, deshplate],
  [metironplate, deshplate, metironplate]]);
silipress.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
silipress.addShiftTooltip(format.darkPurple("Requires materials"));
silipress.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));