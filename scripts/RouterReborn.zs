//Define variables
val router = <RouterReborn:router>;
val enderium = <ThermalFoundation:material:76>;
val fluxcrystal = <RedstoneArsenal:material:96>;

//==================
//TWEAKS START BELOW
//==================

//Change recipe for Router to use Fluxed Crystal and Enderium
recipes.remove(router);
recipes.addShaped(router,
 [[enderium, enderium, enderium],
  [enderium, fluxcrystal, enderium],
  [enderium, enderium, enderium]]);
//Add tooltip for Router
router.addTooltip(format.darkAqua(format.italic("<Nova Shift>")));
router.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Fluxed Crystal"));
router.addShiftTooltip(format.darkPurple("and ") + format.yellow("Enderium"));