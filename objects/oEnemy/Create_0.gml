enum CPU_STATE {
	IDLE, CHASE, SCAN, SEARCH, ATTACK
}

event_inherited();

state			= CPU_STATE.IDLE;
path			= path_add();
moveSpd		   /= 2;
sightRadius		= 175;
attackRadius	= 50;