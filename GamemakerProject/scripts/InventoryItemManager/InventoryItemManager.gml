function UseItem() {
	switch (GetItem(inventorySelectedSlotX, inventorySelectedSlotY)) {
		case InventoryItems.Null: break;
		case InventoryItems.TestItem:
			oPlayer.life += 1;
			break;
	}
	
	SetItem(inventorySelectedSlotX, inventorySelectedSlotY, InventoryItems.Null);
}