/// @desc Basic Movement
var keyUp = keyboard_check(vk_up) || keyboard_check(ord("W")),
	keyDown = keyboard_check(vk_down) || keyboard_check(ord("S")),
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")),
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));

getXAxis = keyLeft - keyRight;
getYAxis = keyUp - keyDown;

xAxis = getXAxis * velocity;
yAxis = getYAxis * velocity;

/* -- Collision Check -- */
// Horizontal Collision
if (place_meeting(x - xAxis, y, oCollisionWall)) {
	while (!place_meeting(x - xAxis, y, oCollisionWall))
		x -= sign(xAxis);
	
	xAxis = 0;
}

// Vertical Collision
if (place_meeting(x, y - yAxis, oCollisionWall)) {
	while (!place_meeting(x, y - yAxis, oCollisionWall))
		y -= sign(yAxis);
	
	yAxis = 0;
}

if (!showingInventory) {
	x -= xAxis;
	y -= yAxis;

	var xCursor = sign(oCursor.x - x);
	if (xCursor != 0)
		image_xscale = xCursor;

	if (xAxis != 0)
		image_xscale = -sign(xAxis);
}

if (life <= 0) {
	instance_destroy();
	game_restart();
}