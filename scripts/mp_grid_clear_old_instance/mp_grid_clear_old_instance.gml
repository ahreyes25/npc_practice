/// @description		Clear instance from mp grid based off of six points of contact
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
	show_debug_message("ERROR @ mp_grid_clear_old_instance() - obj: " + string(obj) + " does not exist.");
	return false;
}
if (mp == noone) { // really? no way to check for mp_grid_exists?
	show_debug_message("ERROR @ mp_grid_clear_old_instance() - mp_grid: " + string(mp) + " does not exist.");
	return false;
}
if (!variable_instance_exists(obj, "obbl") || !variable_instance_exists(obj, "obbr") || !variable_instance_exists(obj, "obbt") || !variable_instance_exists(obj, "obbb")) {
	show_debug_message("ERROR @ mp_grid_clear_old_instance() - object: " + string(obj) + " does not have variables obbl, obbr, obbt, or obbb.");
	return false;
}
if (obj.obbl == noone || obj.obbr == noone || obj.obbt == noone || obj.obbb == noone) {
	show_debug_message("ERROR @ mp_grid_clear_old_instance() - object: " + string(obj) + "'s variables obbl, obbr, obbt, or obbb are set to noone.");
	return false;
}
/// ------------------------------------------------------------------------
	
// Clear Cells Based Off Old Bounding Box Coordinates stored in the Object
var o1 = world_to_grid(obj.obbl, obj.obbt);
var o2 = world_to_grid(obj.obbr, obj.obbt);
var o3 = world_to_grid(obj.obbl, obj.obbb);
var o4 = world_to_grid(obj.obbr, obj.obbb);
var o5 = world_to_grid((obj.obbl + obj.obbr) / 2, obj.obbt);
var o6 = world_to_grid((obj.obbl + obj.obbr) / 2, obj.obbb);
mp_grid_clear_cell(global.aiGrid, o1[0], o1[1]);
mp_grid_clear_cell(global.aiGrid, o2[0], o2[1]);
mp_grid_clear_cell(global.aiGrid, o3[0], o3[1]);
mp_grid_clear_cell(global.aiGrid, o4[0], o4[1]);
mp_grid_clear_cell(global.aiGrid, o5[0], o5[1]);
mp_grid_clear_cell(global.aiGrid, o6[0], o6[1]);

show_debug_message("Successfully cleared obj: " + string(obj) + " from mp_grid " + string(mp) + ".");
return true;