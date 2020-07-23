/// @desc Draw Inventory Cells and Items
if (showingInventory == false)
	exit;

draw_rectangle_color(0, 0, room_width, room_height, 0, 0, 0, 0, false);

DrawInventoryCells();
DrawInventoryItems();