/// @description		Check for clear line of sight from first object
///	returns boolean		-> if clear line of sight exists
/// @param	Obj1		-> object_instance
/// @param	Obj2		-> object_instance
/// -------------------------------------------------------------------------------

// Get Parameters
var obj1 = argument0;
var obj2 = argument1;
/// -------------------------------------------------------------------------------

// Exit Condition
if (!instance_exists(obj1) || !instance_exists(obj2))
	return false;
/// -------------------------------------------------------------------------------

return (collision_line(obj1.x, obj1.y, obj2.x, obj2.y, oWall, false, true) == noone);