/// @description		Melee Cooldown
/// -------------------------------------------------------------------------------

if (!path_exists(path))
	path = path_add();
	
path_clear_points(path);

if (alarm[1] == -1)
	alarm[1] = meleeCooldown;