/// @desc Inventory Code
var keyOpenInventory = keyboard_check_pressed(ord("I"));

if (keyOpenInventory)
	showingInventory = !showingInventory;

instance_activate_all();

if (showingInventory == false)
	exit;

// Movement
MovementSelectedSlot();

// Pausing the Game
var objectsToPause = [
	oCamera,
	pEnemyBase,
	oGame,
];
for (var i = 0; i < array_length(objectsToPause); ++i)
	instance_deactivate_object(objectsToPause[i]);

// Items Manager
var keyUseItem = keyboard_check_pressed(ord("E"));

if (keyUseItem)
	UseItem();