/// @description		Idle State
/// -------------------------------------------------------------------------------

#region Parameters & Exit Conditions

	// Exit Condition
	if (!variable_instance_exists(id, "path"))
		return;
		
#endregion

// Make Sure Path Exists
if (!path_exists(path))
	path = path_add();

path_clear_points(path);

path_position = 0;