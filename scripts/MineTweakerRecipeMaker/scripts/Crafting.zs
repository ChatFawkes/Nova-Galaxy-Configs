// File generated by MineTweakerRecipeMaker
//                     READ THIS HEADER BEFORE EDITING ANYTHING
// ================================================================================
//     This file is read and changed by the mod.
//     If you remove/edit any of the markers, IT WILL STOP WORKING!
//     If you want to make manual edits, make a backup of this file!
//     Markers look like this: "//#MARKER something"
//     They indicate where calls should be placed, so that MineTweaker does them in the correct order.
//     Removes come first, then stuff is added.
// ================================================================================
//

// ================================================================================
//#MARKER REMOVE
recipes.remove(<gendustry:MutatronAdv>);
recipes.remove(<gendustry:Mutatron>);
recipes.remove(<minechem:tile.chemicalSynthesizer>);
recipes.remove(<minechem:tile.chemicalDecomposer>);
recipes.remove(<minechem:minechemAtomicManipulator>);
recipes.remove(<StevesFactoryManager:BlockCableName>);
recipes.remove(<StevesFactoryManager:BlockMachineManagerName>);

// ================================================================================
//#MARKER REMOVE SHAPELESS

// ================================================================================
//#MARKER REMOVE SHAPED

// ================================================================================
//#MARKER ADD

// ================================================================================
//#MARKER ADD SHAPELESS
recipes.addShapeless(<witchery:seedswormwood>, [<witchery:mutator:*>.transformDamage(), <minecraft:wheat>, <witchery:somniancotton>, <witchery:somniancotton>, <witchery:somniancotton>, <witchery:somniancotton>]);

// ================================================================================
//#MARKER ADD SHAPED
recipes.addShaped(<gendustry:MutatronAdv>, [[<ore:gearPlatinum>, <GalacticraftMars:item.itemBasicAsteroids>, <ThermalFoundation:material:133>], [<gendustry:GeneticsProcessor>, <gendustry:Mutatron>, <gendustry:GeneticsProcessor>], [<ore:gearPlatinum>, <gendustry:PowerModule>, <ThermalFoundation:material:133>]]);
recipes.addShaped(<gendustry:Mutatron>, [[<gendustry:BeeReceptacle>, <gendustry:GeneticsProcessor>, <GalacticraftMars:item.null:3>], [<gendustry:PowerModule>, <ThermalExpansion:Frame:3>, <gendustry:BeeReceptacle>], [<gendustry:BeeReceptacle>, <gendustry:MutagenTank>, <GalacticraftMars:item.null:3>]]);
recipes.addShaped(<minechem:tile.chemicalSynthesizer>, [[<GalacticraftMars:item.itemBasicAsteroids:5>, <minecraft:redstone>, <GalacticraftMars:item.itemBasicAsteroids:5>], [<GalacticraftMars:item.itemBasicAsteroids:5>, <minechem:minechemAtomicManipulator>, <GalacticraftMars:item.itemBasicAsteroids:5>], [<GalacticraftMars:item.itemBasicAsteroids:5>, <minecraft:emerald>, <GalacticraftMars:item.itemBasicAsteroids:5>]]);
recipes.addShaped(<minechem:tile.chemicalDecomposer>, [[<ore:ingotTitanium>, <ore:ingotTitanium>, <ore:ingotTitanium>], [<ore:ingotTitanium>, <minechem:minechemAtomicManipulator>, <GalacticraftMars:item.itemBasicAsteroids:5>], [<ore:ingotTitanium>, <ore:dustRedstone>, <ore:ingotTitanium>]]);
recipes.addShaped(<minechem:minechemAtomicManipulator>, [[<TMechworks:RedstoneMachine>, <TMechworks:RedstoneMachine>, <TMechworks:RedstoneMachine>], [<TMechworks:RedstoneMachine>, <ore:compressedTitanium>, <TMechworks:RedstoneMachine>], [<TMechworks:RedstoneMachine>, <TMechworks:RedstoneMachine>, <TMechworks:RedstoneMachine>]]);
recipes.addShaped(<StevesFactoryManager:BlockCableName> * 8, [[<ore:blockGlass>, <ThermalExpansion:Plate>, <ore:blockGlass>], [<ore:plateDesh>, <ore:dustRedstone>, <ore:plateDesh>], [<ore:blockGlass>, <ThermalExpansion:Plate>, <ore:blockGlass>]]);
recipes.addShaped(<StevesFactoryManager:BlockMachineManagerName>, [[<ore:plateDesh>, <ore:plateDesh>, <ore:plateDesh>], [<ore:plateDesh>, <ore:blockRedstone>, <ore:plateDesh>], [<ore:plateDesh>, <TMechworks:RedstoneMachine>, <ore:plateDesh>]]);

// ================================================================================
//#MARKER ADD TOOLTIPS

<minechem:tile.chemicalSynthesizer>.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
<minechem:tile.chemicalSynthesizer>.addShiftTooltip(format.darkPurple("Requires materials"));
<minechem:tile.chemicalSynthesizer>.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

<minechem:tile.chemicalDecomposer>.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
<minechem:tile.chemicalDecomposer>.addShiftTooltip(format.darkPurple("Requires materials"));
<minechem:tile.chemicalDecomposer>.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

<minechem:minechemAtomicManipulator>.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
<minechem:minechemAtomicManipulator>.addShiftTooltip(format.darkPurple("Requires materials"));
<minechem:minechemAtomicManipulator>.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

<StevesFactoryManager:BlockCableName>.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
<StevesFactoryManager:BlockCableName>.addShiftTooltip(format.darkPurple("Requires materials"));
<StevesFactoryManager:BlockCableName>.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

<StevesFactoryManager:BlockMachineManagerName>.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
<StevesFactoryManager:BlockMachineManagerName>.addShiftTooltip(format.darkPurple("Requires materials"));
<StevesFactoryManager:BlockMachineManagerName>.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));