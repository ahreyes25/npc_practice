/// @description		Check for object inside of given radius
///	returns boolean		-> if clear line of sight exists
/// @param	Obj1		-> object_instance
/// @param	Radius		-> radius int
/// -------------------------------------------------------------------------------

// Get Parameters
var obj = argument0;
var rad = argument1;
/// -------------------------------------------------------------------------------

// Exit Condition
if (!instance_exists(obj) || rad < 0)
	return false;
/// -------------------------------------------------------------------------------

return (point_distance(x, y, obj.x, obj.y) <= rad);