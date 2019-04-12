/// @description	Check if the mouse is touching the given object, if no
///					object is specified, then the script checks for ID
/// returns boolean
/// @param	obj*	-> object instance
/// ------------------------------------------------------------------------

// Get Parameters
if (argument_count == 1)
	var obj = argument[0];
else
	var obj = id;
/// ------------------------------------------------------------------------

// Exit Conditions
if (!instance_exists(obj)) {
	show_debug_message("ERROR @ mouse_touching() - obj: " + string(obj) + " does not exist.");
	return false;
}
if (obj.sprite_index == noone) {
	show_debug_message("ERROR @ mouse_touching() - obj: " + string(obj) + " does not have sprite_index " + string(obj.sprite_index) + ".");
	return false;
}
/// ------------------------------------------------------------------------
	
// Check Mouse Touching
var inX = mouse_x > obj.x - obj.sprite_xoffset && mouse_x < obj.x - obj.sprite_xoffset + sprite_get_width(obj.sprite_index);
var inY = mouse_y > obj.y - obj.sprite_yoffset && mouse_y < obj.y - obj.sprite_yoffset + sprite_get_height(obj.sprite_index);

return (inX && inY);
