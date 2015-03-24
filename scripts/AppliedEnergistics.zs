//Define variables
val calcpress = <appliedenergistics2:item.ItemMultiMaterial:13>;
val engpress = <appliedenergistics2:item.ItemMultiMaterial:14>;
val logipress = <appliedenergistics2:item.ItemMultiMaterial:15>;
val silipress = <appliedenergistics2:item.ItemMultiMaterial:19>;
val metironplate = <GalacticraftCore:item.meteoricIronIngot:1>;
val purecertus = <appliedenergistics2:item.ItemMultiMaterial:10>;
val gold = <ore:ingotGold>;
val diamond = <minecraft:diamond>;
val silicon = <appliedenergistics2:item.ItemMultiMaterial:5>;
val mecontroller = <appliedenergistics2:tile.BlockController>;
val skystone = <appliedenergistics2:tile.BlockSkyStone:1>;
val purefluix = <appliedenergistics2:item.ItemMultiMaterial:12>;
val deshplate = <GalacticraftMars:item.null:5>;
val lunariumplate = <InterstellarOres:materialLunarium:1>;
val skystoneraw = <appliedenergistics2:tile.BlockSkyStone>;
val clouldinabottle = <chisel:cloudinabottle>;
val deshore = <GalacticraftMars:tile.mars:2>;

//==================
//TWEAKS START BELOW
//==================

//Create recipe for Sky Stone
recipes.addShaped(skystoneraw * 8,
 [[deshore, deshore, deshore],
  [deshore, clouldinabottle, deshore],
  [deshore, deshore, deshore]]);

//Create recipe for Calculation (Pure Certus) Press
recipes.addShaped(calcpress,
 [[metironplate, lunariumplate, metironplate],
  [lunariumplate, purecertus, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
//Add tooltip for Calculation Press
calcpress.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
calcpress.addShiftTooltip(format.darkPurple("Requires materials"));
calcpress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));
  
//Create recipe for Engineering (Diamond) Press
recipes.addShaped(engpress,
 [[metironplate, lunariumplate, metironplate],
  [lunariumplate, diamond, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
//Add tooltip for Engineering Press
engpress.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
engpress.addShiftTooltip(format.darkPurple("Requires materials"));
engpress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));
  
//Create recipe for Logic (Gold) Press
recipes.addShaped(logipress,
 [[metironplate, lunariumplate, metironplate],
  [lunariumplate, gold, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
//Add tooltip for Logic Press  
logipress.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
logipress.addShiftTooltip(format.darkPurple("Requires materials"));
logipress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));  

//Create recipe for Silicon Press
recipes.addShaped(silipress,
  [[metironplate, lunariumplate, metironplate],
  [lunariumplate, silicon, lunariumplate],
  [metironplate, lunariumplate, metironplate]]);
//Add tooltip for Silicon Press
silipress.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
silipress.addShiftTooltip(format.darkPurple("Requires materials"));
silipress.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));  
  
//Change recipe for ME Controller to use Desh from Mars
recipes.remove(mecontroller);
recipes.addShaped(mecontroller,
 [[skystone, purefluix, skystone],
  [purefluix, deshplate, purefluix],
  [skystone, purefluix, skystone]]);
//Add tooltip for ME Controller
mecontroller.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
mecontroller.addShiftTooltip(format.darkPurple("Requires materials"));
mecontroller.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));