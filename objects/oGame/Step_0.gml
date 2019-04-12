// Fullscreen
if (keyboard_check_pressed(ord("F")))
	if (keyboard_check(vk_shift))	
		window_set_fullscreen(!window_get_fullscreen());
		
// Restart 
if (keyboard_check_pressed(ord("R")))
	if (keyboard_check(vk_shift))
		room_restart();
		
// Exit
if (keyboard_check_pressed(vk_escape))
	if (keyboard_check(vk_shift))
		game_end();
		
// Toggle Debug
if (keyboard_check_pressed(ord("T")))
	if (keyboard_check(vk_shift))
		global.debug = !global.debug;