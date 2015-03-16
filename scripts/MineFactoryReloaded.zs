//Define variables
val planter = <MineFactoryReloaded:machine.0:0>;
val fisher = <MineFactoryReloaded:machine.0:1>;
val harvester = <MineFactoryReloaded:machine.0:2>;
val rancher = <MineFactoryReloaded:machine.0:3>;
val fertilizer = <MineFactoryReloaded:machine.0:4>;
val veterinaryStation = <MineFactoryReloaded:machine.0:5>;
val itemCollector = <MineFactoryReloaded:machine.0:6>;
val blockBreaker = <MineFactoryReloaded:machine.0:7>;
val weatherCollector = <MineFactoryReloaded:machine.0:8>;
val sludgeBoiler = <MineFactoryReloaded:machine.0:9>;
val sewer = <MineFactoryReloaded:machine.0:10>;
val composter = <MineFactoryReloaded:machine.0:11>;
val breeder = <MineFactoryReloaded:machine.0:12>;
val grinder = <MineFactoryReloaded:machine.0:13>;
val autoEnchanter = <MineFactoryReloaded:machine.0:14>;
val chronotyper = <MineFactoryReloaded:machine.0:15>;
val ejector = <MineFactoryReloaded:machine.1:0>;
val itemRouter = <MineFactoryReloaded:machine.1:1>;
val liquidRouter = <MineFactoryReloaded:machine.1:2>;
val deepStorageUnit = <MineFactoryReloaded:machine.1:3>;
val liquicrafter = <MineFactoryReloaded:machine.1:4>;
val lavaFabricator = <MineFactoryReloaded:machine.1:5>;
val steamBoiler = <MineFactoryReloaded:machine.1:6>;
val autoJukebox = <MineFactoryReloaded:machine.1:7>;
val unifier = <MineFactoryReloaded:machine.1:8>;
val autoSpawner = <MineFactoryReloaded:machine.1:9>;
val bioreactor = <MineFactoryReloaded:machine.1:10>;
val biofuelGenerator = <MineFactoryReloaded:machine.1:11>;
val autoDisenchanter = <MineFactoryReloaded:machine.1:12>;
val slaughterhouse = <MineFactoryReloaded:machine.1:13>;
val meatPacker = <MineFactoryReloaded:machine.1:14>;
val enchantmentRouter = <MineFactoryReloaded:machine.1:15>;
val laserDrill = <MineFactoryReloaded:machine.2:0>;
val laserDrillPrecharger = <MineFactoryReloaded:machine.2:1>;
val autoAnvil = <MineFactoryReloaded:machine.2:2>;
val blockSmasher = <MineFactoryReloaded:machine.2:3>;
val rednoteBlock = <MineFactoryReloaded:machine.2:4>;
val autoBrewer = <MineFactoryReloaded:machine.2:5>;
val fruitPicker = <MineFactoryReloaded:machine.2:6>;
val blockPlacer = <MineFactoryReloaded:machine.2:7>;
val mobCounter = <MineFactoryReloaded:machine.2:8>;
val steamTurbine = <MineFactoryReloaded:machine.2:9>;
val chunkLoader = <MineFactoryReloaded:machine.2:10>;
val fountain = <MineFactoryReloaded:machine.2:11>;
val mobRouter = <MineFactoryReloaded:machine.2:12>;

//==================
//TWEAKS START BELOW
//==================

//--------------
//RECIPE CHANGES 
//--------------
#Most recipes have been changed to use a higher tier Machine Frame. However, a few have been changed to use materials from space.

//Remove all machine recipes
recipes.remove(<MineFactoryReloaded:machine.0:*>);
recipes.remove(<MineFactoryReloaded:machine.1:*>);
recipes.remove(<MineFactoryReloaded:machine.2:*>);

//Add recipes for machine.0 blocks
recipes.addShaped(planter * 1, [[<ore:plateMeteoricIron>, <minecraft:flower_pot> * 1, <ore:plateMeteoricIron>], [<minecraft:piston:*> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:piston:*> * 1], [<ore:gearCopper>, <ThermalExpansion:material:1> * 1, <ore:gearCopper>]]);
recipes.addShaped(fisher * 1, [[<ore:sheetPlastic>, <minecraft:fishing_rod> * 1, <ore:sheetPlastic>], [<minecraft:bucket> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:bucket> * 1], [<ore:gearIron>, <ThermalExpansion:material:1> * 1, <ore:gearIron>]]);
recipes.addShaped(harvester * 1, [[<ore:plateMeteoricIron>, <minecraft:shears> * 1, <ore:plateMeteoricIron>], [<ThermalFoundation:tool.axeInvar> * 1, <ThermalExpansion:Frame:3> * 1, <ThermalFoundation:tool.axeInvar> * 1], [<ore:gearGold>, <ThermalExpansion:material:1> * 1, <ore:gearGold>]]);
recipes.addShaped(rancher * 1, [[<ore:sheetPlastic>, <MineFactoryReloaded:cable.plastic> * 1, <ore:sheetPlastic>], [<minecraft:shears> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:shears> * 1], [<ore:gearTin>, <ThermalExpansion:material:1> * 1, <ore:gearTin>]]);
recipes.addShaped(fertilizer * 1, [[<ore:sheetPlastic>, <minecraft:glass_bottle> * 1, <ore:sheetPlastic>], [<minecraft:leather> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:leather> * 1], [<ore:gearNickel>, <ThermalExpansion:material:1> * 1, <ore:gearNickel>]]);
recipes.addShaped(veterinaryStation * 1, [[<ore:sheetPlastic>, <MineFactoryReloaded:syringe.empty> * 1, <ore:sheetPlastic>], [<MineFactoryReloaded:syringe.empty> * 1, <ThermalExpansion:Frame:3> * 1, <MineFactoryReloaded:syringe.empty> * 1], [<ore:gearCopper>, <ThermalExpansion:material:1> * 1, <ore:gearCopper>]]);
recipes.addShaped(itemCollector * 8, [[<ore:sheetPlastic>, null, <ore:sheetPlastic>], [null, <ThermalExpansion:Frame:1> * 1, null], [<ore:sheetPlastic>, <minecraft:chest:*> * 1, <ore:sheetPlastic>]]);
recipes.addShaped(blockBreaker * 1, [[<ore:sheetPlastic>, <ore:gearInvar>, <ore:sheetPlastic>], [<ThermalFoundation:tool.pickaxeInvar> * 1, <ThermalExpansion:Frame:3> * 1, <ThermalFoundation:tool.shovelInvar> * 1], [<ore:gearIron>, <ThermalExpansion:material:1> * 1, <ore:gearIron>]]);
recipes.addShaped(weatherCollector * 1, [[<ore:sheetPlastic>, <minecraft:iron_bars:*> * 1, <ore:sheetPlastic>], [<minecraft:bucket> * 1, <ThermalExpansion:Frame:1> * 1, <minecraft:bucket> * 1], [<ore:gearCopper>, <ThermalExpansion:material:1> * 1, <ore:gearCopper>]]);
recipes.addShaped(sludgeBoiler * 1, [[<ore:sheetPlastic>, <minecraft:bucket> * 1, <ore:sheetPlastic>], [<minecraft:furnace:*> * 1, <ThermalExpansion:Frame:2> * 1, <minecraft:furnace:*> * 1], [<ore:gearIron>, <ThermalExpansion:material:1> * 1, <ore:gearIron>]]);
recipes.addShaped(sewer * 4, [[<ore:sheetPlastic>, <minecraft:bucket> * 1, <ore:sheetPlastic>], [<minecraft:brick> * 1, <ThermalExpansion:Frame:2> * 1, <minecraft:brick> * 1], [<minecraft:brick> * 1, <ThermalExpansion:material> * 1, <minecraft:brick> * 1]]);
recipes.addShaped(composter * 1, [[<ore:sheetPlastic>, <minecraft:furnace:*> * 1, <ore:sheetPlastic>], [<minecraft:piston:*> * 1, <ThermalExpansion:Frame:2> * 1, <minecraft:piston:*> * 1], [<minecraft:brick> * 1, <ThermalExpansion:material:1> * 1, <minecraft:brick> * 1]]);
recipes.addShaped(breeder * 1, [[<ore:sheetPlastic>, <minecraft:golden_apple> * 1, <ore:sheetPlastic>], [<minecraft:golden_carrot> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:golden_carrot> * 1], [<ore:dyePurple>, <ThermalExpansion:material:1> * 1, <ore:dyePurple>]]);
recipes.addShaped(grinder * 1, [[<ore:sheetPlastic>, <ThermalFoundation:tool.swordInvar> * 1, <ore:sheetPlastic>], [<minecraft:book> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:book> * 1], [<ore:gearTin>, <ThermalExpansion:material:1> * 1, <ore:gearTin>]]);
recipes.addShaped(autoEnchanter * 1, [[<ore:sheetPlastic>, <minecraft:obsidian:*> * 1, <ore:sheetPlastic>], [<minecraft:book> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:book> * 1], [<ore:gemDiamond>, <ThermalExpansion:material:1> * 1, <ore:gemDiamond>]]);
recipes.addShaped(chronotyper * 1, [[<ore:sheetPlastic>, <ore:gemEmerald>, <ore:sheetPlastic>], [<ore:gemEmerald>, <ThermalExpansion:Frame:3> * 1, <ore:gemEmerald>], [<ore:dyePurple>, <ThermalExpansion:material:1> * 1, <ore:dyePurple>]]);

//Add recipes for machine.1 blocks
recipes.addShaped(ejector * 8, [[<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>], [null, <ThermalExpansion:material> * 1, null], [<ore:dustRedstone>, <ThermalExpansion:Frame:1> * 1, <ore:dustRedstone>]]);
recipes.addShaped(itemRouter * 8, [[<ore:sheetPlastic>, <minecraft:chest:*> * 1, <ore:sheetPlastic>], [<ThermalExpansion:meter> * 1, <ThermalExpansion:Frame:1> * 1, <ThermalExpansion:meter> * 1], [<ore:sheetPlastic>, <ThermalExpansion:meter> * 1, <ore:sheetPlastic>]]);
recipes.addShaped(liquidRouter * 8, [[<ore:sheetPlastic>, <MineFactoryReloaded:cable.plastic> * 1, <ore:sheetPlastic>], [<ThermalExpansion:meter> * 1, <ThermalExpansion:Frame:1> * 1, <ThermalExpansion:meter> * 1], [<ore:sheetPlastic>, <ThermalExpansion:meter> * 1, <ore:sheetPlastic>]]);
recipes.addShaped(deepStorageUnit * 1, [[<ore:sheetPlastic>, <ThermalExpansion:Strongbox:3> * 1, <ore:sheetPlastic>], [<ThermalExpansion:Strongbox:3> * 1, <ThermalExpansion:Frame:10> * 1, <ThermalExpansion:Strongbox:3> * 1], [<ore:sheetPlastic>, <ThermalExpansion:Strongbox:3> * 1, <ore:sheetPlastic>]]);
recipes.addShaped(liquicrafter * 1, [[<ore:sheetPlastic>, <minecraft:crafting_table:*> * 1, <ore:sheetPlastic>], [<ThermalExpansion:Tank:1> * 1, <ThermalExpansion:Frame:2> * 1, <ThermalExpansion:Tank:1> * 1], [<minecraft:book> * 1, <ThermalExpansion:material> * 1, <minecraft:book> * 1]]);
recipes.addShaped(lavaFabricator * 1, [[<ore:sheetPlastic>, <minecraft:obsidian:*> * 1, <ore:sheetPlastic>], [<minecraft:magma_cream> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:magma_cream> * 1], [<minecraft:blaze_rod> * 1, <ThermalExpansion:material:1> * 1, <minecraft:blaze_rod> * 1]]);
recipes.addShaped(steamBoiler * 1, [[<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>], [<ThermalExpansion:Tank:3> * 1, sludgeBoiler * 1, <ThermalExpansion:Tank:3> * 1], [<minecraft:nether_brick_stairs:*> * 1, <minecraft:nether_brick_stairs:*> * 1, <minecraft:nether_brick_stairs:*> * 1]]);
recipes.addShaped(autoJukebox * 8, [[<ore:sheetPlastic>, <minecraft:jukebox>, <ore:sheetPlastic>], [<ore:sheetPlastic>, <ThermalExpansion:Frame:2> * 1, <ore:sheetPlastic>], [null, null, null]]);
recipes.addShaped(unifier * 1, [[<ore:sheetPlastic>, <ThermalExpansion:meter> * 1, <ore:sheetPlastic>], [<minecraft:comparator> * 1, <ThermalExpansion:Frame:1> * 1, <minecraft:comparator> * 1], [<ore:gearSilver>, <minecraft:book> * 1, <ore:gearSilver>]]);
recipes.addShaped(autoSpawner * 1, [[<ore:sheetPlastic>, <minecraft:nether_wart> * 1, <ore:sheetPlastic>], [<minecraft:magma_cream> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:magma_cream> * 1], [<ore:gemEmerald>, <ThermalExpansion:material:1> * 1, <ore:gemEmerald>]]);
recipes.addShaped(bioreactor * 1, [[<ore:sheetPlastic>, <minecraft:fermented_spider_eye> * 1, <ore:sheetPlastic>], [<ore:slimeball>, <ThermalExpansion:Frame:3> * 1, <ore:slimeball>], [<minecraft:brick> * 1, <minecraft:sugar> * 1, <minecraft:brick> * 1]]);
recipes.addShaped(biofuelGenerator * 1, [[<ore:sheetPlastic>, <minecraft:furnace:*> * 1, <ore:sheetPlastic>], [<minecraft:piston:*> * 1, <ThermalExpansion:Frame:1> * 1, <minecraft:piston:*> * 1], [<minecraft:blaze_rod> * 1, <ThermalExpansion:material:2> * 1, <minecraft:blaze_rod> * 1]]);
recipes.addShaped(autoDisenchanter * 1, [[<ore:sheetPlastic>, <minecraft:nether_brick:*> * 1, <ore:sheetPlastic>], [<minecraft:book> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:book> * 1], [<ore:gemDiamond>, <ThermalExpansion:material:1> * 1, <ore:gemDiamond>]]);
recipes.addShaped(slaughterhouse * 1, [[<ore:sheetPlastic>, <ore:gearInvar>, <ore:sheetPlastic>], [<ThermalFoundation:tool.swordInvar> * 1, <ThermalExpansion:Frame:3> * 1, <ThermalFoundation:tool.swordInvar> * 1], [<ThermalFoundation:tool.axeInvar> * 1, <ThermalExpansion:material:1> * 1, <ThermalFoundation:tool.axeInvar> * 1]]);
recipes.addShaped(meatPacker * 1, [[<ore:sheetPlastic>, <ThermalExpansion:igniter> * 1, <ore:sheetPlastic>], [<minecraft:brick_block:*> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:brick_block:*> * 1], [<minecraft:brick_block:*> * 1, <ThermalExpansion:material:1> * 1, <minecraft:brick_block:*> * 1]]);
recipes.addShaped(enchantmentRouter * 1, [[<ore:sheetPlastic>, <minecraft:book> * 1, <ore:sheetPlastic>], [<minecraft:repeater> * 1, <ThermalExpansion:Frame:2> * 1, <minecraft:repeater> * 1], [<ore:sheetPlastic>, <minecraft:repeater> * 1, <ore:sheetPlastic>]]);

//Add recipes for machine.2 blocks
recipes.addShaped(laserDrill, [[<GalacticraftMars:item.itemBasicAsteroids:6>, <ThermalExpansion:Light>, <GalacticraftMars:item.itemBasicAsteroids:6>], [<ThermalExpansion:material:1>, <ThermalExpansion:Light>, <ThermalExpansion:material:1>], [<RedstoneArsenal:Storage:1>, <ThermalExpansion:Glass>, <RedstoneArsenal:Storage:1>]]);
recipes.addShaped(laserDrillPrecharger, [[<GalacticraftMars:item.itemBasicAsteroids:6>, <MineFactoryReloaded:pinkslime:1>, <GalacticraftMars:item.itemBasicAsteroids:6>], [<ThermalExpansion:Glass>, <ThermalExpansion:Light>, <ThermalExpansion:Glass>], [<ThermalExpansion:material:1>, <RedstoneArsenal:Storage:1>, <ThermalExpansion:material:1>]]);
recipes.addShaped(autoAnvil * 1, [[<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>], [<minecraft:anvil:*> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:anvil:*> * 1], [<ore:gearIron>, <ThermalExpansion:material:1> * 1, <ore:gearIron>]]);
recipes.addShaped(blockSmasher * 1, [[<ore:sheetPlastic>, <minecraft:piston:*> * 1, <ore:sheetPlastic>], [<MineFactoryReloaded:hammer> * 1, <ThermalExpansion:Frame:2> * 1, <MineFactoryReloaded:hammer> * 1], [<minecraft:book> * 1, <ThermalExpansion:material:1> * 1, <minecraft:book> * 1]]);
recipes.addShaped(rednoteBlock * 1, [[<ore:sheetPlastic>, <minecraft:noteblock>, <ore:sheetPlastic>], [<ore:cableRedNet>, <ThermalExpansion:Frame:1> * 1, <ore:cableRedNet>], [null, null, null]]);
recipes.addShaped(autoBrewer * 1, [[<ore:sheetPlastic>, <minecraft:brewing_stand> * 1, <ore:sheetPlastic>], [<MineFactoryReloaded:cable.plastic> * 1, <ThermalExpansion:Frame:3> * 1, <MineFactoryReloaded:cable.plastic> * 1], [<minecraft:repeater> * 1, <ThermalExpansion:material:1> * 1, <minecraft:repeater> * 1]]);
recipes.addShaped(fruitPicker * 1, [[<ore:sheetPlastic>, <ThermalFoundation:tool.axeInvar> * 1, <ore:sheetPlastic>], [<minecraft:shears> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:shears> * 1], [<ore:gearTin>, <ThermalExpansion:material:1> * 1, <ore:gearTin>]]);
recipes.addShaped(blockPlacer * 1, [[<ore:sheetPlastic>, <minecraft:dispenser:*> * 1, <ore:sheetPlastic>], [<minecraft:dispenser:*> * 1, <ThermalExpansion:Frame:2> * 1, <minecraft:dispenser:*> * 1], [<ore:sheetPlastic>, <ThermalExpansion:material:1> * 1, <ore:sheetPlastic>]]);
recipes.addShaped(mobCounter * 1, [[<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>], [<minecraft:repeater> * 1, <minecraft:comparator> * 1, <minecraft:repeater> * 1], [<ThermalExpansion:meter> * 1, <ThermalExpansion:Frame:1> * 1, <ThermalExpansion:meter> * 1]]);
recipes.addShaped(steamTurbine * 1, [[<ore:sheetPlastic>, <ThermalExpansion:Dynamo>.withTag({RSControl: 0 as byte, Facing: 1 as byte, Energy: 0, Augments: [{Slot: 0, id: 4283 as short, Count: 1 as byte, Damage: 32 as short}]}) * 1, <ore:sheetPlastic>], [<minecraft:piston:*> * 1, <ThermalExpansion:Frame:3> * 1, <minecraft:piston:*> * 1], [<ore:gearSilver>, <ThermalExpansion:material:2> * 1, <ore:gearSilver>]]);
recipes.addShaped(fountain * 1, [[<ore:sheetPlastic>, <minecraft:iron_bars:*> * 1, <ore:sheetPlastic>], [<ThermalExpansion:Tank:1> * 1, <ThermalExpansion:Frame:3> * 1, <ThermalExpansion:Tank:1> * 1], [<ore:gearNickel>, <ThermalExpansion:material:1> * 1, <ore:gearNickel>]]);
recipes.addShaped(mobRouter * 1, [[<ore:sheetPlastic>, <ore:sheetPlastic>, <ore:sheetPlastic>], [<minecraft:iron_bars:*> * 1, itemRouter * 1, <minecraft:iron_bars:*> * 1], [<ore:dyeOrange>, chronotyper * 1, <ore:dyeOrange>]]);

//--------
//TOOLTIPS
//--------
//----------------------------------------------------------------------------------------------------------------------
//Add tooltips for machine.0 blocks
planter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
planter.addShiftTooltip(format.darkPurple("Requires materials"));
planter.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

fisher.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fisher.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
fisher.addShiftTooltip(format.gold("Machine Frame"));

harvester.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
harvester.addShiftTooltip(format.darkPurple("Requires materials"));
harvester.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Moon"));

rancher.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
rancher.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
rancher.addShiftTooltip(format.gold("Machine Frame"));

fertilizer.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fertilizer.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
fertilizer.addShiftTooltip(format.gold("Machine Frame"));

veterinaryStation.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
veterinaryStation.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
veterinaryStation.addShiftTooltip(format.gold("Machine Frame"));

itemCollector.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
itemCollector.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
itemCollector.addShiftTooltip(format.gold("Machine Frame"));

blockBreaker.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
blockBreaker.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
blockBreaker.addShiftTooltip(format.gold("Machine Frame"));

weatherCollector.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
weatherCollector.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
weatherCollector.addShiftTooltip(format.gold("Machine Frame"));

sludgeBoiler.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
sludgeBoiler.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
sludgeBoiler.addShiftTooltip(format.gold("Machine Frame"));

sewer.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
sewer.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
sewer.addShiftTooltip(format.gold("Machine Frame"));

composter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
composter.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
composter.addShiftTooltip(format.gold("Machine Frame"));

breeder.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
breeder.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
breeder.addShiftTooltip(format.gold("Machine Frame"));

grinder.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
grinder.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
grinder.addShiftTooltip(format.gold("Machine Frame"));

autoEnchanter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
autoEnchanter.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
autoEnchanter.addShiftTooltip(format.gold("Machine Frame"));

chronotyper.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
chronotyper.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
chronotyper.addShiftTooltip(format.gold("Machine Frame"));

//----------------------------------------------------------------------------------------------------------------------
//Add tooltips for machine.1 blocks
ejector.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
ejector.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
ejector.addShiftTooltip(format.gold("Machine Frame"));

itemRouter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
itemRouter.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
itemRouter.addShiftTooltip(format.gold("Machine Frame"));

liquidRouter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
liquidRouter.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
liquidRouter.addShiftTooltip(format.gold("Machine Frame"));

deepStorageUnit.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
deepStorageUnit.addShiftTooltip(format.darkPurple("Requires materials"));
deepStorageUnit.addShiftTooltip(format.darkPurple("from ") + format.yellow("Mars"));

liquicrafter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
liquicrafter.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
liquicrafter.addShiftTooltip(format.gold("Machine Frame"));

lavaFabricator.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
lavaFabricator.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
lavaFabricator.addShiftTooltip(format.gold("Machine Frame"));

steamBoiler.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
steamBoiler.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
steamBoiler.addShiftTooltip(format.gold("Machine Frame"));

autoJukebox.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
autoJukebox.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
autoJukebox.addShiftTooltip(format.gold("Machine Frame"));

unifier.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
unifier.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
unifier.addShiftTooltip(format.gold("Machine Frame"));

autoSpawner.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
autoSpawner.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
autoSpawner.addShiftTooltip(format.gold("Machine Frame"));

bioreactor.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
bioreactor.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
bioreactor.addShiftTooltip(format.gold("Machine Frame"));

biofuelGenerator.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
biofuelGenerator.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
biofuelGenerator.addShiftTooltip(format.gold("Machine Frame"));

autoDisenchanter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
autoDisenchanter.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
autoDisenchanter.addShiftTooltip(format.gold("Machine Frame"));

slaughterhouse.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
slaughterhouse.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
slaughterhouse.addShiftTooltip(format.gold("Machine Frame"));

meatPacker.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
meatPacker.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
meatPacker.addShiftTooltip(format.gold("Machine Frame"));

enchantmentRouter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
enchantmentRouter.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
enchantmentRouter.addShiftTooltip(format.gold("Machine Frame"));

//----------------------------------------------------------------------------------------------------------------------
//Add tooltips for machine.2 blocks
laserDrill.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
laserDrill.addShiftTooltip(format.darkPurple("Requires materials"));
laserDrill.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

laserDrillPrecharger.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
laserDrillPrecharger.addShiftTooltip(format.darkPurple("Requires materials"));
laserDrillPrecharger.addShiftTooltip(format.darkPurple("from the ") + format.yellow("Asteroids"));

autoAnvil.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
autoAnvil.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
autoAnvil.addShiftTooltip(format.gold("Machine Frame"));

blockSmasher.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
blockSmasher.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
blockSmasher.addShiftTooltip(format.gold("Machine Frame"));

rednoteBlock.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
rednoteBlock.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
rednoteBlock.addShiftTooltip(format.gold("Machine Frame"));

autoBrewer.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
autoBrewer.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
autoBrewer.addShiftTooltip(format.gold("Machine Frame"));

fruitPicker.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fruitPicker.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
fruitPicker.addShiftTooltip(format.gold("Machine Frame"));

blockPlacer.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
blockPlacer.addShiftTooltip(format.darkPurple("Requires ") + format.red("Reinforced"));
blockPlacer.addShiftTooltip(format.gold("Machine Frame"));

mobCounter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
mobCounter.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
mobCounter.addShiftTooltip(format.gold("Machine Frame"));

steamTurbine.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
steamTurbine.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
steamTurbine.addShiftTooltip(format.gold("Machine Frame"));

chunkLoader.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
chunkLoader.addShiftTooltip(format.red("Disabled"));

fountain.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
fountain.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Hardened"));
fountain.addShiftTooltip(format.gold("Machine Frame"));

mobRouter.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
mobRouter.addShiftTooltip(format.darkPurple("Requires ") + format.darkGreen("Resonant"));
mobRouter.addShiftTooltip(format.gold("Machine Frame"));