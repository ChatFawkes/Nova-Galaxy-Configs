//Define variables
val tesseract = <ThermalExpansion:Tesseract>;
val enderium = <ThermalFoundation:material:76>;
val deshingot =  <GalacticraftMars:item.null:2>;
val tessframe = <ThermalExpansion:Frame:10>;
val hardglass = <ThermalExpansion:Glass>;
val basicframe = <ThermalExpansion:Frame>;
val steel = <ore:ingotSteel>;
val glass = <ore:blockGlass>;
val tingear = <ore:gearTin>;
val salt = <harvestcraft:saltItem>;
val tankReinforced = <ore:tankReinforced>;

//==================
//TWEAKS START BELOW
//==================

//Add ore dictionary entry for Reinforced Portable Tank
tankReinforced.add(<ThermalExpansion:Tank:3>);

//Change recipe for Basic Machine Frame to use Steel
recipes.remove(basicframe);
recipes.addShaped(basicframe,
 [[steel, glass, steel],
  [glass, tingear, glass],
  [steel, glass, steel]]);
//Add tooltip for Basic Machine Frame
basicframe.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
basicframe.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Steel Ingots"));

//Change recipe for Tesseract Frame (Empty) //Uses Desh which is obtained on Mars
recipes.remove(tessframe);
recipes.addShaped(tessframe,
 [[enderium, deshingot, enderium],
  [hardglass, <minecraft:diamond>, hardglass],
  [enderium, hardglass, enderium]]);
//Add tooltip for Tesseract Frame
tessframe.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
tessframe.addShiftTooltip(format.darkPurple("Requires materials"));
tessframe.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));