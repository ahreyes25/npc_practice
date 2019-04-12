/// @description	Move the main player with WASD keyboard inputs.
// ----------------------------------------------------------------

var kLeft	= keyboard_check(ord("A"));
var kRight	= keyboard_check(ord("D"));
var kUp		= keyboard_check(ord("W"));
var kDown	= keyboard_check(ord("S"));

state = PLAYER_STATE.IDLE;

// Move Left
if (kLeft) {
	if (hspd > -moveSpd)
		hspd -= accel;
	else
		hspd = -moveSpd;
		
	facing = -1;
	state = PLAYER_STATE.RUN;
}

// Move Right
if (kRight) {
	if (hspd < moveSpd)
		hspd += accel;
	else
		hspd = moveSpd;
		
	facing = 1;
	state = PLAYER_STATE.RUN;
}

// Move Down
if (kDown) {
	if (kLeft || kRight) {
		if (vspd < moveSpd)
			vspd += accel / 2;
		else
			vspd = moveSpd
	}
	else {
		if (vspd < moveSpd)
			vspd += accel;
		else
			vspd = moveSpd;
	}
			
	state = PLAYER_STATE.RUN;
}

// Move Up
if (kUp) {
	if (kLeft || kRight) {
		if (vspd > -moveSpd)
			vspd -= accel / 2;
		else
			vspd = -moveSpd;
	}
	else {
		if (vspd > moveSpd)
			vspd -= accel;
		else
			vspd = -moveSpd;
	}
			
	state = PLAYER_STATE.RUN;
}	

// Not Moving
if (!kDown && !kUp)
	vspd  = 0;
if (!kLeft && !kRight)
	hspd  = 0;