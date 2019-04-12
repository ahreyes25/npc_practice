if (path_exists(path)) {
	var tx = path_get_point_x(path, path_get_number(path) - 1);
	if (x > tx)
		facing = -1;
	else if (x < tx)
		facing = 1;
}
