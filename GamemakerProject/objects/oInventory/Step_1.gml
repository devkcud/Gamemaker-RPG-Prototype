/// @desc Resize Inventory Grid
if (inventoryWidth > MAX_INVENTORY_WIDTH)
	inventoryWidth = MAX_INVENTORY_WIDTH;

if (inventoryHeight > MAX_INVENTORY_HEIGHT)
	inventoryHeight = MAX_INVENTORY_HEIGHT;

ds_grid_resize(global.inventoryGrid, inventoryWidth, inventoryHeight);