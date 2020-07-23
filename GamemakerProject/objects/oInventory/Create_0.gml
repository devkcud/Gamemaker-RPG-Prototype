/// @desc Init Variables
globalvar showingInventory;
showingInventory = false;

globalvar inventoryWidth, inventoryHeight;
inventoryWidth = INITIAL_INVENTORY_WIDTH;
inventoryHeight = INITIAL_INVENTORY_HEIGHT;

global.inventoryGrid = ds_grid_create(inventoryWidth, inventoryHeight);