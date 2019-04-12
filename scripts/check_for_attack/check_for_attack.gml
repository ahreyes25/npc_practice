/// @description		Check for distance to target to determine attacking
/// @param Target
/// -------------------------------------------------------------------------------

// Get Parameters
var target = argument0;
/// -------------------------------------------------------------------------------

// Exit Condition
if (!instance_exists(target))
	return;
/// -------------------------------------------------------------------------------

if (point_distance(x, y, target.x, target.y) <= attackRadius) {
		
	path_clear_points(path);
	
	if (path_exists(path))
		path_delete(path);
		
	state = CPU_STATE.ATTACK;
}