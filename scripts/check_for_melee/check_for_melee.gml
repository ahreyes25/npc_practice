/// @description		Check for distance to target to determine attacking
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
	if (!instance_exists(target) || !variable_instance_exists(id, "attackRadius") || 
		!variable_instance_exists(id, "state")) {
			return;
	}

#endregion

if (
	point_distance(x, y, target.x, target.y) <= attackRadius
){
	state = CPU_STATE.MELEE;
}