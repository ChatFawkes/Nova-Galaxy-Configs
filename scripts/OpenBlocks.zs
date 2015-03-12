//Define variables
val elevator = <OpenBlocks:elevator>;
val slimeball = <ore:slimeball>;
val levitator = <Thaumcraft:blockLifter>;

//-------------------
//TWEAKS START BELOW
//-------------------

//Change recipe for Elevator to use Arcane Levitator
recipes.remove(elevator);
recipes.addShaped(elevator,
 [[<ore:dyeWhite>, slimeball, <ore:dyeWhite>],
  [<ore:blockCloth>, levitator, <ore:blockCloth>],
  [<ore:dyeWhite>, slimeball, <ore:dyeWhite>]]);
//Add tooltip for Elevator
elevator.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
elevator.addShiftTooltip(format.darkPurple("Requires an ") + format.yellow("Arcane Levitator"));