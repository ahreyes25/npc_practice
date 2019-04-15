/// @description		Idle State
/// -------------------------------------------------------------------------------

#region Parameters & Exit Conditions

	// Exit Condition
	if (!variable_instance_exists(id, "path"))
		return;
		
#endregion

// End Path
if (path_exists(path)) {
	path_clear_points(path);
	path_delete(path);
}