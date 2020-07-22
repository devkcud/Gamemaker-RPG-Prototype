/// @desc Basic Movement
var keyUp = keyboard_check(vk_up) || keyboard_check(ord("W")),
	keyDown = keyboard_check(vk_down) || keyboard_check(ord("S")),
	keyLeft = keyboard_check(vk_left) || keyboard_check(ord("A")),
	keyRight = keyboard_check(vk_right) || keyboard_check(ord("D"));

xAxis = keyLeft - keyRight;
yAxis = keyUp - keyDown;

x -= xAxis * velocity;
y -= yAxis * velocity;