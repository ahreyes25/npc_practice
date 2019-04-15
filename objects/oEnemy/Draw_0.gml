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
	
	case CPU_STATE.MELEE:
		sprite_index = sEnemy_melee;
		image_speed = 0;
		break;
}

if (!global.debug)
	draw_self();

#region Draw Debug Visuals
	
	if (global.debug) {
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

		// Draw Area of Sight
		draw_set_color(c_yellow);
		var dir1 = point_direction(x, y, x + (blindSpot * facing), y + sightRadius);
		var dir2 = point_direction(x, y, x + (blindSpot * facing), y - sightRadius);
		draw_line(x, y, x + lengthdir_x(sightRadius, dir1), y + lengthdir_y(sightRadius, dir1));
		draw_line(x, y, x + lengthdir_x(sightRadius, dir2), y + lengthdir_y(sightRadius, dir2));
		draw_set_color(c_white);
	
		// Draw Text
		draw_text(x, y, state);
	}
	
#endregion