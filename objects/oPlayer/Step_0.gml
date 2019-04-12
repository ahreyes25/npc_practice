event_inherited();

switch (state) {
	case PLAYER_STATE.IDLE:
		move_with_input();
		check_collisions();
		break;
	
	case PLAYER_STATE.RUN:
		move_with_input();
		check_collisions();
		break;
}