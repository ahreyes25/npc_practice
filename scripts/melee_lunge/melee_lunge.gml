/// @description		Melee Lunge At Target
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
		!variable_instance_exists(id, "moveSpd") || !variable_instance_exists(id, "drawColor") ||
		!variable_instance_exists(id, "state")) {
			return;
	}
		
#endregion

drawColor = c_white;

if (!path_exists(path))
	path = path_add();
	
if (path_get_length(path) == 0) {
	if (mp_grid_path(global.aiGrid, path, x, y, target.x, target.y, true)) {
	
		path_clear_points(path);
		path_add_point(path, x, y, 100);
	
		// Check For A Clear Line of Sight
		if (line_of_sight(id, target)) {
			path_add_point(path, target.x, target.y, 100);
		}
		// Create New Path
		else {
			var newTarget = collision_line(x, y, target.x, target.y, oWall, false, true);
			path_add_point(path, newTarget.x, newTarget.y, 100);
		}

		path_start(path, moveSpd * 4, path_action_stop, true);
	}
}
	
// End of Path -> Transition State
if (path_get_length(path) > 0 && path_position == 1)
	state = CPU_STATE.MELEE_COOLDOWN;