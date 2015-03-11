//Define variables
val enderquarry = <ExtraUtilities:enderQuarry>;
val quarry = <BuildCraft|Factory:machineBlock>;
val lunarium = <InterstellarOres:materialLunarium:0>;
val desh = <GalacticraftMars:item.null:2>;
val titanium = <GalacticraftMars:item.itemBasicAsteroids:5>;
val endobsidian = <ExtraUtilities:decorativeBlock1:1>;
val endcore = <ExtraUtilities:decorativeBlock1:11>;
val endpump = <ExtraUtilities:enderThermicPump>;
val compmatrix = <ExtraUtilities:decorativeBlock1:12>;
val angelrings = <ExtraUtilities:angelRing:*>;
val angelringi = <ExtraUtilities:angelRing:0>;
val angelringfe = <ExtraUtilities:angelRing:1>;
val angelringfa = <ExtraUtilities:angelRing:2>;
val angelringd = <ExtraUtilities:angelRing:3>;
val angelringg = <ExtraUtilities:angelRing:4>;
val drum = <ExtraUtilities:drum>;
val hwpressureplate = <minecraft:heavy_weighted_pressure_plate>;
val refportabletank = <ThermalExpansion:Tank:3>;
val unstable = <ExtraUtilities:unstableingot>;
val gold = <minecraft:gold_ingot>;
val nstar = <minecraft:nether_star>;
val jetpack = <Mekanism:ArmoredJetpack:1>;
val refcan = <ExtraUtilities:watering_can:3>;
val bedblock = <ExtraUtilities:block_bedrockium>;
val yellowheart = <TConstruct:heartCanister:4>;
val redheart = <TConstruct:heartCanister:2>;
val enderpearl = <minecraft:ender_pearl>;
val redtorch = <minecraft:redstone_torch>;
val redstone = <minecraft:redstone>;
val nquartz = <minecraft:quartz>;
val endtransmitter = <ExtraUtilities:nodeUpgrade:5>;
val endreceiver = <ExtraUtilities:nodeUpgrade:6>;
val meteoriron = <GalacticraftCore:item.meteoricIronIngot>;
val enderium = <ThermalFoundation:material:76>;
val fluxcrystal = <RedstoneArsenal:material:96>;
val voidmetal = <Thaumcraft:ItemResource:16>;
val upgradebase = <ExtraUtilities:enderQuarryUpgrade:0>;
val speedupgrade = <ExtraUtilities:nodeUpgrade:0>;
val stackupgrade = <ExtraUtilities:nodeUpgrade:3>;  
val speed1upgrade = <ExtraUtilities:enderQuarryUpgrade:6>;
val speed2upgrade = <ExtraUtilities:enderQuarryUpgrade:7>;
val speed3upgrade = <ExtraUtilities:enderQuarryUpgrade:8>;
val fortune1upgrade = <ExtraUtilities:enderQuarryUpgrade:3>;
val fortune2upgrade = <ExtraUtilities:enderQuarryUpgrade:4>;
val fortune3upgrade = <ExtraUtilities:enderQuarryUpgrade:5>;
val silktouchupgrade = <ExtraUtilities:enderQuarryUpgrade:2>;
val fortune1pick = <minecraft:iron_pickaxe>.withTag({ench: [{id: 35 as short, lvl: 1 as short}]});
val fortune2pick = <minecraft:golden_pickaxe>.withTag({ench: [{id: 35 as short, lvl: 2 as short}]});
val fortune3pick = <minecraft:diamond_pickaxe>.withTag({ench: [{id: 35 as short, lvl: 3 as short}]});
val silktouchpick = <minecraft:diamond_pickaxe>.withTag({ench: [{id: 33 as short, lvl: 1 as short}]});

//-------------------
//TWEAKS START BELOW
//-------------------

//Remove recipe for Ender Transmitter
recipes.remove(endtransmitter);
//Add tooltip for Ender Transmitter 
endtransmitter.addTooltip(format.red("Disabled"));

//Remove recipe for Ender Receiver
recipes.remove(endreceiver);
//Add tooltip for Ender Receiver 
endreceiver.addTooltip(format.red("Disabled"));

//Change recipe for Ender Quarry to use a Nether Star
recipes.remove(enderquarry);
recipes.addShaped(enderquarry,
 [[endobsidian, nstar, endobsidian],
  [endcore, compmatrix, endcore],
  [endpump, quarry, endpump]]);
//Add tooltip for Ender Quarry
enderquarry.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
enderquarry.addShiftTooltip(format.darkPurple("Requires materials"));
enderquarry.addShiftTooltip(format.darkPurple("from ") + format.yellow("The Nether"));
 
//Remove recipes for all Angel Rings
recipes.remove(angelrings);

//Create new recipe for Angel Ring (Invisible) that uses end-game items from various mods
recipes.addShaped(angelringi,
 [[fluxcrystal, unstable, fluxcrystal],
  [voidmetal, jetpack,  voidmetal],
  [titanium, fluxcrystal, titanium]]);

//Add shapeless recipes so you can convert between rings types easily
recipes.addShapeless(angelringfe, [angelringi]);                    #Invisible -> Feathery
recipes.addShapeless(angelringfa, [angelringfe]);                   #Feather -> Fairy
recipes.addShapeless(angelringd, [angelringfa]);                    #Fairy -> Dragon
recipes.addShapeless(angelringg, [angelringd]);                     #Dragon -> Golden
recipes.addShapeless(angelringi, [angelringg]);                     #Golden -> Invisible

//Add tooltip for Angel Rings
angelrings.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
angelrings.addShiftTooltip(format.darkPurple("Requires ingots"));
angelrings.addShiftTooltip(format.darkPurple("from various mods"));

//Add alternative recipe for Reinforced Watering Can
recipes.addShaped(refcan,
 [[bedblock, yellowheart, redheart],
  [bedblock, <minecraft:bowl>, bedblock],
  [null, bedblock, null]]);
//Add tooltip for Reinforced Watering Can
refcan.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
refcan.addShiftTooltip(format.darkPurple("Alternate recipe"));
refcan.addShiftTooltip(format.darkPurple("with TiCon hearts"));

//Change recipe for Drum to use a Reinforced Portable Tank
recipes.remove(drum);
recipes.addShaped(drum,
 [[null, hwpressureplate, null],
  [hwpressureplate, refportabletank, hwpressureplate],
  [null, hwpressureplate, null]]);
//Add tooltip for Drum
drum.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
drum.addShiftTooltip(format.darkPurple("Requires Reinforced"));
drum.addShiftTooltip(format.darkPurple("Portable Tank"));

//Change recipe for "Ender Quarry Speed 2 Upgrade" to use Lunarium from the Moon
recipes.remove(speed2upgrade);
recipes.addShaped(speed2upgrade,
 [[null, speedupgrade, null],
  [lunarium, speed1upgrade, lunarium]]);
//Add tooltip for Speed 2 Upgrade
speed2upgrade.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
speed2upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
speed2upgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for "Ender Quarry Speed 3 Upgrade" to use Desh from Mars
recipes.remove(speed3upgrade);
recipes.addShaped(speed3upgrade,
 [[stackupgrade, null, stackupgrade],
  [desh, speed2upgrade, desh]]);
//Add tooltip for Speed 3 Upgrade
speed3upgrade.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
speed3upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
speed3upgrade.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

//Change Recipe for "Ender Quarry Fortune 1 Upgrade" to use Lunarium from the Moon
recipes.remove(fortune1upgrade);
recipes.addShaped(fortune1upgrade,
 [[null, fortune1pick, null],
  [lunarium, upgradebase, lunarium]]);
//Add tooltip for Fortune 1 Upgrade
fortune1upgrade.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fortune1upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
fortune1upgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

//Change recipe for "Ender Quarry Fortune 2 Upgrade" to use Desh from Mars
recipes.remove(fortune2upgrade);
recipes.addShaped(fortune2upgrade,
 [[null, fortune2pick, null],
  [desh, fortune1upgrade, desh]]);
//Add tooltip for Fortune 2 Upgrade
fortune2upgrade.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fortune2upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
fortune2upgrade.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

//Change recipe for "Ender Quarry Fortune 3 Upgrade" to use Titanium from the Asteroids
recipes.remove(fortune3upgrade);
recipes.addShaped(fortune3upgrade,
 [[null, fortune3pick, null],
  [titanium, fortune2upgrade, titanium]]);
//Add tooltip for Fortune 3 Upgrade
fortune3upgrade.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fortune3upgrade.addShiftTooltip(format.darkPurple("Requires materials"));
fortune3upgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

//Change recipe for "Ender Quarry Silk Touch Upgrade" to use Titanium from the Asteroids
recipes.remove(silktouchupgrade);
recipes.addShaped(silktouchupgrade,
 [[null, silktouchpick, null],
  [titanium, upgradebase, titanium]]);
//Add tooltip for Silk Touch Upgrade
silktouchupgrade.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
silktouchupgrade.addShiftTooltip(format.darkPurple("Requires materials"));
silktouchupgrade.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));