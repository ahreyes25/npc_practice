event_inherited();

switch(state) {
	case CPU_STATE.IDLE:
		idle();
		check_for_chase();
		//check_for_melee();
		break;
	
	case CPU_STATE.CHASE:
		chase();
		check_for_idle();	
		//check_for_melee();
		break;
		
	case CPU_STATE.MELEE:
		break;
}

face_forward();

#region DEBUGGING: Adjust Vision Vectors

	if (keyboard_check(vk_right))
		sightRadius++;
	if (keyboard_check(vk_left))
		sightRadius--;
	if (keyboard_check(vk_up))
		blindSpot += 10;
	if (keyboard_check(vk_down))
		blindSpot -= 10;
	
#endregion