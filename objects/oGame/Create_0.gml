global.debug	= false;

// ai Grid
global.unitW	= 16;
global.unitH	= 16;
global.gridW	= room_width / global.unitW;
global.gridH	= room_height / global.unitH;

// Pathfinding Grid
global.aiGrid	= mp_grid_create(0, 0, global.gridW, global.gridH, global.unitW, global.unitH);
// Visualization Grid For Debugging -> DELETE EVENTUALLY
global._aiGrid	= ds_grid_create(global.gridW, global.gridH);