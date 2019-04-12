event_inherited();

switch (state) {
	case PLAYER_STATE.IDLE:
		sprite_index = sPlayer_idle;
		image_speed = 0.4;
		break;
	
	case PLAYER_STATE.RUN:
		sprite_index = sPlayer_run;
		image_speed = 0.6;
		break;
}
draw_self();