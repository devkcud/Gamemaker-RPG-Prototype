function MovementSelectedSlot() {
	var keyUp = keyboard_check_pressed(vk_up),
		keyDown = keyboard_check_pressed(vk_down),
		keyLeft = keyboard_check_pressed(vk_left),
		keyRight = keyboard_check_pressed(vk_right);
	
	if (keyUp && inventorySelectedSlotY > 0)
		inventorySelectedSlotY -= 1;
	else if (keyDown && inventorySelectedSlotY < inventoryHeight - 1)
		inventorySelectedSlotY += 1;
	
	if (keyLeft && inventorySelectedSlotX > 0)
		inventorySelectedSlotX -= 1;
	else if (keyRight && inventorySelectedSlotX < inventoryWidth - 1)
		inventorySelectedSlotX += 1;
}