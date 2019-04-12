/// @description		Add instance to mp grid based off of six points of contact
///	returns boolean		-> if instance was added properly or not
/// @param	mp_grid		->	mp_grid
/// @param	objInst*	->	object instance, default is ID
/// ------------------------------------------------------------------------

// Get Parameters
if (argument_count == 2)
	var obj = argument[1];
else
	var obj = id;
var mp = argument[0];
/// ------------------------------------------------------------------------
	
// Exit Conditions
if (!instance_exists(obj)) {
	show_debug_message("ERROR @ mp_grid_add_instance() - obj: " + string(obj) + " does not exist.");
	return false;
}
if (mp == noone) { // really? no way to check for mp_grid_exists?
	show_debug_message("ERROR @ mp_grid_add_instance() - mp_grid: " + string(mp) + " does not exist.");
	return false;
}
/// ------------------------------------------------------------------------

// Convert 6 World Points Into Grid Points
var c1 = world_to_grid(obj.bbox_left, obj.bbox_top);
var c2 = world_to_grid(obj.bbox_right, obj.bbox_top);
var c3 = world_to_grid(obj.bbox_left, obj.bbox_bottom);
var c4 = world_to_grid(obj.bbox_right, obj.bbox_bottom);
var c5 = world_to_grid((obj.bbox_right + obj.bbox_left) / 2, obj.bbox_top);
var c6 = world_to_grid((obj.bbox_right + obj.bbox_left) / 2, obj.bbox_bottom);
mp_grid_add_cell(global.aiGrid, c1[0], c1[1]);
mp_grid_add_cell(global.aiGrid, c2[0], c2[1]);
mp_grid_add_cell(global.aiGrid, c3[0], c3[1]);
mp_grid_add_cell(global.aiGrid, c4[0], c4[1]);
mp_grid_add_cell(global.aiGrid, c5[0], c5[1]);
mp_grid_add_cell(global.aiGrid, c6[0], c6[1]);

show_debug_message("Successfully added obj: " + string(obj) + " to mp_grid " + string(mp) + ".");
return true;