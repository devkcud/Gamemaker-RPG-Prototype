// Get
function GetItem(slotX, slotY) {
	return ds_grid_get(global.inventoryGrid, slotX, slotY);
}

function GetSlotEmptiness(slotX, slotY) {
	item = GetItem(slotX, slotY);
	if (item == InventoryItems.Null)
		return true;
	else
		return false;
}

// Set
function SetItemSlot(slotX, slotY, itemID) {
	return ds_grid_set(global.inventoryGrid, slotX, slotY, itemID);
}

function SetFirstBlankSlot(itemID) {
	for (var hh = 0; hh < inventoryHeight; ++hh)
		for (var ww = 0; ww < inventoryWidth; ++ww) {
			
			if (GetSlotEmptiness(ww, hh)) {
				SetItemSlot(ww, hh, itemID);
				return true;
			}
			
		}
}