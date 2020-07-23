/// @desc Create Objects
initObjects = [
	oCamera,
	oInventory,
];

for (var i = 0; i < array_length(initObjects); ++i)
	instance_create_layer(x, y, layer, initObjects[i]);