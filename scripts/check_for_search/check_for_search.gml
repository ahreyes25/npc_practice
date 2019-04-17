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
	if (!instance_exists(target) || !variable_instance_exists(id, "state") ||
		!variable_instance_exists(id, "searchTimer")) {
			return;
	}

#endregion

if (state == CPU_STATE.IDLE)
	if (alarm[2] <= 0)
		alarm[2] = searchTimer;