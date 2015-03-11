//Define variables
val glasspane = <minecraft:glass_pane>;
val redstone = <minecraft:redstone>;
val iron = <ore:ingotIron>;
val meteoriron = <ore:ingotMeteoricIron>;
val osmium = <ore:ingotOsmium>;
val osmiumdust = <ore:dustOsmium>;
val solarpanel = <MekanismGenerators:SolarPanel>;
val advsolar = <MekanismGenerators:Generator:5>;
val solar = <MekanismGenerators:Generator:1>;
val enralloy = <Mekanism:EnrichedAlloy>;
val refalloy = <Mekanism:ReinforcedAlloy>;
val atomalloy = <Mekanism:AtomicAlloy>;
val windgen = <MekanismGenerators:Generator:6>;
val tablet = <Mekanism:EnergyTablet:*>;
val digminer = <Mekanism:MachineBlock:4>;
val metalinfuser = <Mekanism:MachineBlock:8>;
val robit = <Mekanism:Robit:*>;
val logisort = <Mekanism:MachineBlock:15>;
val teleporter = <Mekanism:PortableTeleporter:*>;
val deshplate = <ore:plateDesh>;
val titanium = <ore:ingotTitanium>;
val titaniumplate = <ore:compressedTitanium>;
val teframe = <ThermalExpansion:Frame:3>;
val steelplate = <ore:compressedSteel>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val furnace = <minecraft:furnace>;

//-------------------
//TWEAKS START BELOW
//-------------------

//Add Aluminum Ingot -> Dust recipe to Crusher
mods.mekanism.Crusher.addRecipe(<TConstruct:materials:11>, <TConstruct:materials:40>);

//Remove recipe for Cardboard Box
recipes.remove(<Mekanism:CardboardBox>);
mods.nei.NEI.hide(<Mekanism:CardboardBox>);

//Change recipe for Metallurgic Infuser to use Compressed Steel
recipes.remove(metalinfuser);
recipes.addShaped(metalinfuser,
 [[iron, steelplate, iron],
  [redstone, osmium, redstone],
  [iron, furnace, iron]]);
//Add tooltip for Metallurgic Infuser
metalinfuser.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
metalinfuser.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Compressed Steel"));

//Change recipe for Wind Turbine to use Reinforced Alloys
recipes.remove(windgen);
recipes.addShaped(windgen,
 [[null, osmium, null],
  [osmium, refalloy, osmium],
  [tablet, <ore:circuitBasic>, tablet]]);
//Add tooltip for Wind Turbine
windgen.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
windgen.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Reinforced Alloys"));

//Change recipe for Solar Panel (item) to use Lunarium from the Moon
recipes.remove(solarpanel);
recipes.addShaped(solarpanel,
 [[glasspane, glasspane, glasspane],
  [lunarium, enralloy, lunarium],
  [osmium, osmium, osmium]]);
//Add tooltip for Solar Panel
solarpanel.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
solarpanel.addShiftTooltip(format.darkPurple("Requires materials"));
solarpanel.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for Solar Generator to use Meteoric Iron from the Moon
recipes.remove(solar);
recipes.addShaped(solar,
 [[solarpanel, solarpanel, solarpanel],
  [refalloy, meteoriron, refalloy],
  [osmiumdust, tablet, osmiumdust]]);
//Add tooltip for Solar Generator
solar.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
solar.addShiftTooltip(format.darkPurple("Requires materials"));
solar.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for Advanced Solar Generator to use Desh from Mars
recipes.remove(advsolar);
recipes.addShaped(advsolar,
 [[solar, atomalloy, solar],
  [solar, atomalloy, solar],
  [deshplate, deshplate, deshplate]]);
//Add tooltip for Advanced Solar Generator
advsolar.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
advsolar.addShiftTooltip(format.darkPurple("Requires materials"));
advsolar.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

//Change recipe for Digital Miner to use Titanium from the Asteroids
recipes.remove(digminer);
recipes.addShaped(digminer,
 [[atomalloy, titanium, atomalloy],
  [logisort, robit, logisort],
  [teleporter, teframe, teleporter]]);
//Add tooltip for Digital Miner
digminer.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
digminer.addShiftTooltip(format.darkPurple("Requires materials"));
digminer.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));