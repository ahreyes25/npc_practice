/// @description		Check for distance to target to determine chase
/// @param Target
/// -------------------------------------------------------------------------------

// Get Parameters
var target = argument0;
/// -------------------------------------------------------------------------------

// Exit Condition
if (!instance_exists(target))
	return;
/// -------------------------------------------------------------------------------

if (state == CPU_STATE.IDLE) {
	if (line_of_sight(id, target) && inside_radius(target, sightRadius)) {
		
		// Setup Path to Target
		if (!path_exists(path))
			path = path_add();
			
		path_clear_points(path);
			
		// Check for Valid Grid Path
		if (mp_grid_path(global.aiGrid, path, x, y, target.x, target.y, true)) {
			path_start(path, moveSpd, path_action_stop, true);
			state = CPU_STATE.CHASE;
		}
	}
}
else if (state == CPU_STATE.CHASE) {
	if (line_of_sight(id, target) && inside_radius(target, sightRadius)) {
		
		// Setup Path to Target
		if (!path_exists(path))
			path = path_add();
			
		path_clear_points(path);
			
		// Check for Valid Grid Path
		if (mp_grid_path(global.aiGrid, path, x, y, target.x, target.y, true)) {
			path_start(path, moveSpd, path_action_stop, true);
			state = CPU_STATE.CHASE;
		}
	}
}