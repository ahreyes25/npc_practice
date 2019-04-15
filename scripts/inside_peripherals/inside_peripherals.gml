/// @description		Check for object inside unit peripherals 
///	returns boolean		-> if target is inside peripherals
/// @param	From		-> object_instance
/// @param	To			-> object_instance
/// -------------------------------------------------------------------------------

#region Parameters & Exit Conditions
	
	var from	= argument0;
	var to		= argument1;

	// Exit Condition
	if (!instance_exists(from) || !instance_exists(to))
		return false;
	if (!variable_instance_exists(from, "coneAng") || !variable_instance_exists(from, "facing") || 
		!variable_instance_exists(from, "sightRadius") || !variable_instance_exists(from, "blindSpot")) {
			return false;
	}

#endregion

// Two Cone Vectors
var dir1  = point_direction(x, y, x + (blindSpot * facing), y + sightRadius);
var dir2  = point_direction(x, y, x + (blindSpot * facing), y - sightRadius);
var vec1  = [lengthdir_x(sightRadius, dir1), lengthdir_y(sightRadius, dir1)];
var vec2  = [lengthdir_x(sightRadius, dir2), lengthdir_y(sightRadius, dir2)];
var coneAng = vectors_angle(normalize_vector(vec1), normalize_vector(vec2));

// Target Vector Angle
var dir = point_direction(from.x, from.y, to.x, to.y);
var len = point_distance(from.x, from.y, to.x, to.y);
var vecTarg  = [lengthdir_x(len, dir), lengthdir_y(len, dir)];

// Mid Line Vision Vector Angle
var dirMid = (point_direction(from.x, from.y, from.x + (from.blindSpot * from.facing), from.y + from.sightRadius) + point_direction(from.x, from.y, from.x + (from.blindSpot * from.facing), from.y - from.sightRadius)) / 2;
var vecMid  = [lengthdir_x(from.sightRadius, dirMid), lengthdir_y(from.sightRadius, dirMid)];
var targAng = vectors_angle(normalize_vector(vecTarg), normalize_vector(vecMid));

// Flip for facing the other 
if (from.facing == 1)
	targAng = (targAng - 180) * -1;
	
return ((coneAng / 2) >= targAng);