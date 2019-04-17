enum CPU_STATE {
	IDLE, CHASE, SEARCH, MELEE_CHARGE, MELEE_LUNGE, MELEE_COOLDOWN
}

event_inherited();

state			= CPU_STATE.IDLE;
nextState		= CPU_STATE.IDLE;
path			= path_add();
moveSpd		   /= 2;
currentTarget	= oPlayer;

// Target Vision
sightRadius		= 175;
blindSpot		= 25;
attackRadius	= 50;
coneAng			= noone;

meleeChargeTime = 90;
meleeCooldown	= 90;
searchTimer		= 90;
drawColor		= c_white;
facing			= -1;
counter = 0;