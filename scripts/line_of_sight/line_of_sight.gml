/// @description		Check for clear line of sight from first object
///	returns boolean		-> if clear line of sight exists
/// @param	From		-> object_instance
/// @param	To			-> object_instance
/// -------------------------------------------------------------------------------

#region Parameters & Exit Conditions

	var from	= argument0;
	var to		= argument1;

	// Exit Condition
	if (!instance_exists(from) || !instance_exists(to))
		return false;
		
#endregion

// Check For Clear Line Of Sight
return (collision_line(from.x, from.y, to.x, to.y, oWall, false, true) == noone);