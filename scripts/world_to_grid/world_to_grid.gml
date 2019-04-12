/// @description	Convert an xy coordinate pair into a uv coordinate pair
///	returns [u, v]	->	array pair
/// @param	x		->	world x coordinate
/// @param	y		->	world y coordinate
/// ------------------------------------------------------------------------

var xx	= argument0;
var yy	= argument1;

return [floor(xx / global.unitW), floor(yy / global.unitH)];