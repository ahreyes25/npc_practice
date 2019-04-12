event_inherited();

switch(state) {
	case CPU_STATE.IDLE:	
		sprite_index = sEnemy_idle;
		image_speed = 0.4;
		break;
	
	case CPU_STATE.CHASE:
		sprite_index = sEnemy_run;
		image_speed = 0.8;
		break;
	
	case CPU_STATE.SCAN:
		sprite_index = sEnemy_idle;
		image_speed = 0.4;
		break;
	
	case CPU_STATE.SEARCH:
		sprite_index = sEnemy_run;
		image_speed = 0.8;
		break;
	
	case CPU_STATE.ATTACK:
		sprite_index = sEnemy_idle;
		image_speed = 0.4;
		break;
}
draw_self();

// Draw Chase & Attack Radius
draw_radius(sightRadius, c_blue);
draw_radius(attackRadius, c_red);

// Draw Path
if (path_exists(path))
	draw_path(path, x, y, true);

// Draw Line of Sight
if (line_of_sight(id, oPlayer))
	draw_set_color(c_aqua);
else
	draw_set_color(c_fuchsia);
draw_line(x, y, oPlayer.x, oPlayer.y);
draw_set_color(c_white);