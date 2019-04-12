event_inherited();

switch(state) {
	case CPU_STATE.IDLE:
		check_for_chase(oPlayer);
		//check_for_attack(oPlayer);
		break;
	
	case CPU_STATE.CHASE:
		check_for_chase(oPlayer);
		check_for_chase_stop(oPlayer);	
		//check_for_attack(oPlayer);
		break;
}

face_target();