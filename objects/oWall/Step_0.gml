// Set Draw Order Depth
depth = -y;

// Set Starting Point To Mp Grid
if (!setStartingPointToGrid && global.aiGrid != noone && global._aiGrid != noone) {
	mp_grid_add_instance(global.aiGrid);
	setStartingPointToGrid = true;
}

// Toggle Mouse Follow
if (mouse_touching() && mouse_check_button_pressed(mb_left)) {
	if (keyboard_check(vk_shift)) {
		
		followingMouse = !followingMouse;
	
		// Drop Box -> Add Box to MP Grid, Clear Old Position
		if (!followingMouse && global.aiGrid != noone && global._aiGrid != noone) {
	
			mp_grid_add_instance(global.aiGrid);
			mp_grid_clear_old_instance(global.aiGrid);
		
			// Store Current Values As Old For Later Clearing
			obbl = bbox_left;
			obbr = bbox_right;
			obbt = bbox_top;
			obbb = bbox_bottom;
		}
	}	
}
	
// Follow Mouse
if (followingMouse) {
	x = mouse_x;
	y = mouse_y;
}