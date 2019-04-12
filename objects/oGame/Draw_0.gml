if (global.debug) {

	// Draw MP Grid
	if (global.aiGrid != noone) {
		mp_grid_draw(global.aiGrid);	
	}

	// Draw Custom MP Grid
	draw_set_color(c_black);
	
	// Draw Vertical Grid Lines
	for (var i = 0; i < global.gridW; i++)
		draw_line(i * global.unitW, 0, i * global.unitW, room_height);
		
	// Draw Horizontal Grid Lines
	for (var j = 0; j < global.gridH; j++)
		draw_line(0, j * global.unitH, room_width, j * global.unitW);
		
	draw_set_color(c_white);
}