/// @description		Charge Melee Attack
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
		!variable_instance_exists(id, "meleeChargeTime")) {
			return;
	}
		
#endregion

// Charge Up Attack
if (alarm[0] == -1)
	alarm[0] = meleeChargeTime;

// Make Sure Path Exists
if (!path_exists(path))
	path = path_add();

// Clear Path
if (path_exists(path))
	path_clear_points(path);

// Shake
x += irandom_range(-1, 1);
y += irandom_range(-1, 1);

if (variable_instance_exists(id, "drawColor"))
	drawColor = c_red;