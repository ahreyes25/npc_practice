enum CPU_STATE {
	IDLE, CHASE, SEARCH, PACE, MELEE, RANGE
}

event_inherited();

state			= CPU_STATE.IDLE;
path			= path_add();
moveSpd		   /= 2;
currentTarget	= oPlayer;

// Target Vision
sightRadius		= 175;
blindSpot		= 25;
attackRadius	= 50;
coneAng			= noone;