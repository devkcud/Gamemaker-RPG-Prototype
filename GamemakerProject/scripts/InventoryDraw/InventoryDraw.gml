function DrawInventoryCells() {
	for (var ww = 0; ww < inventoryWidth; ++ww)
		for (var hh = 0; hh < inventoryHeight; ++hh) {
			var buffer = 8;
			
			var vX = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * ww),
				vY = sprite_get_height(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * hh);
			
			draw_sprite(sInventoryCell, 0, vX, vY);
		}
}

function DrawInventoryItems() {
	for (var ww = 0; ww < inventoryWidth; ++ww)
		for (var hh = 0; hh < inventoryHeight; ++hh) {
			var buffer = 8;
			
			var vX = sprite_get_width(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * ww),
				vY = sprite_get_height(sInventoryCell) + ((buffer + sprite_get_width(sInventoryCell)) * hh);
			
			draw_sprite(sItems, GetItem(ww, hh), vX, vY);
		}
}