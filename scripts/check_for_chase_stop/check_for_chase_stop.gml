/// @description		Check for line of sight to target before ending
/// @param Target
/// -------------------------------------------------------------------------------

// Get Parameters
var target = argument0;
/// -------------------------------------------------------------------------------

// Exit Condition
if (!instance_exists(target))
	return;
/// -------------------------------------------------------------------------------

// Finished Chasing
if (path_position == 1) {
	if (!line_of_sight(id, target) || !inside_radius(target, sightRadius)) {
			
		// End Path
		path_clear_points(path);
			
		if (path_exists(path))
			path_delete(path);
				
		state = CPU_STATE.IDLE;
	}
}