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
	inside_radius(target, attackRadius) &&
	line_of_sight(id, target)
){
	state = CPU_STATE.MELEE_CHARGE;
}