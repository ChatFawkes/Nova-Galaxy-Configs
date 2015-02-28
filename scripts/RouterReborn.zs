# Define variables
val router = <RouterReborn:router>;
val enderium = <ThermalFoundation:material:76>;
val fluxcrystal = <RedstoneArsenal:material:96>;

# Change recipe for Router
recipes.remove(router);
recipes.addShaped(router,
 [[enderium, enderium, enderium],
  [enderium, fluxcrystal, enderium],
  [enderium, enderium, enderium]]);
router.addTooltip(format.darkAqua(format.italic("<Flux Shift>")));
router.addShiftTooltip(format.darkPurple("Requires ") + format.yellow("Fluxed Crystal"));
router.addShiftTooltip(format.darkPurple("and ") + format.yellow("Enderium"));