/// @desc Inventory Code
var keyOpenInventory = keyboard_check_pressed(ord("I"));

if (keyOpenInventory)
	showingInventory = !showingInventory;

instance_activate_all();

if (showingInventory == false)
	exit;

var objectsToPause = [
	oCamera,
	oPlayer,
	pEnemyBase,
	oGame,
];
for (var i = 0; i < array_length(objectsToPause); ++i)
	instance_deactivate_object(objectsToPause[i]);