/// @description	Convert a uv coordinate pair into an xy coordinate pair
///	returns [x, y]	->	array pair
/// @param	u		->	grid u coordinate
/// @param	u		->	grid v coordinate
/// ------------------------------------------------------------------------

var uu	= argument0;
var vv	= argument1;

return [uu * global.unitW, vv * global.unitH];