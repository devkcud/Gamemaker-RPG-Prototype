/// @desc Add item to inventory
if (place_meeting(x, y, oCursor) || place_meeting(x, y, oPlayer)) {
	canPickup = SetFirstBlankSlot(itemID);

	if (canPickup)
		instance_destroy();
}