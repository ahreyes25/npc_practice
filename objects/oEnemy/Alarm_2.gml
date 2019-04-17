/// @description Search Timer

if (state == CPU_STATE.IDLE) {
	state = CPU_STATE.SEARCH;
	
	if (!path_exists(path))
		path = path_add();
	path_clear_points(path);
}
