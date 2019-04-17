/// @description		Start Grid Chasing
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
	if (!instance_exists(target) || !variable_instance_exists(id, "path") || !variable_instance_exists(id, "moveSpd"))
		return;
		
#endregion

// Setup Path to Target
if (!path_exists(path))
	path = path_add();
			
// Check for Valid Grid Path
if (line_of_sight(id, target)) {
	if (mp_grid_path(global.aiGrid, path, x, y, target.x, target.y, true)) {
		path_start(path, moveSpd, path_action_stop, false);
	}
}