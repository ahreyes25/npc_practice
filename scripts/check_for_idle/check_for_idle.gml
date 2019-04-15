/// @description		Check for line of sight to target before ending
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
	if (!instance_exists(target) || !variable_instance_exists(id, "state") || 
		!variable_instance_exists(id, "path") || !variable_instance_exists(id, "sightRadius")) {
			return;
	}
	
#endregion

if (state == CPU_STATE.CHASE) {
	if (path_exists(path) && path_position == 1) {
		
		// Chase End Conditions
		if (
			!line_of_sight(id, target) || 
			!inside_radius(target, sightRadius)
		){
			state = CPU_STATE.IDLE;
		}
	}
}