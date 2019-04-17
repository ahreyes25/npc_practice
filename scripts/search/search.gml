/// @description		Pick Random Point That Is Not Occupied, And Try To Move To It
/// @param Target*
/// -------------------------------------------------------------------------------

#region Parameters & Exit Conditions
	
	// Get Target
	if (argument_count == 0) {
		if (variable_instance_exists(id, "currentTarget"))
			var target = currentTarget;
		else
			return;
	}
	else
		var target = argument[0];

	// Exit Condition
	if (!instance_exists(target) || !variable_instance_exists(id, "path") ||
		!variable_instance_exists(id, "moveSpd") || !variable_instance_exists(id, "state"))
		return;
		
#endregion

// If Search No Path Has Been Created
if (path_position <= 0) {
	
	if (!path_exists(path))
		path = path_add();
	path_clear_points(path);
	
	var rx = -1; // random x world
	var ry = -1; // random y world
	var gx = -1; // grid x
	var gy = -1; // grid y
	var co; // converted world to grid coordinates

	while(mp_grid_get_cell(global.aiGrid, gx, gy) == -1) {
		rx = random_range(0, room_width);
		ry = random_range(0, room_height);
		co = world_to_grid(rx, ry);
		gx = co[0];
		gy = co[1];
	}

	if (mp_grid_path(global.aiGrid, path, x, y, rx, ry, true)) {
		path_start(path, moveSpd, path_action_stop, false);	
	}
}

// Once Path Is Completed
if (path_position == 1)
	state = CPU_STATE.IDLE;