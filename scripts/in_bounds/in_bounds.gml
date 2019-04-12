/// @description	Given a uv pair, check if coordinates are within bounds
/// returns	boolean
///	@param	grid	->	ds_type_grid
///	@param	u		->	grid u coordinate
/// @param	v		->	grid v coordinate
/// ------------------------------------------------------------------------

// Get Parameters
var grid	= argument0;
var uu		= round(argument1);
var vv		= round(argument2);
/// ------------------------------------------------------------------------

// Exit Condition
if (!ds_exists(grid, ds_type_grid)) {
	show_debug_message("ERROR @ in_bounds() - ds_grid: " + string(grid) + " does not exist.");
	return false;
}
/// ------------------------------------------------------------------------

return (
	uu >= 0 && uu < ds_grid_width(grid) && 
	vv >= 0 && vv < ds_grid_height(grid)
);
return true;