enum PLAYER_STATE {
	IDLE, RUN
}	

event_inherited();

state		= PLAYER_STATE.IDLE;
accel		= 1;
facing		= 1;
hspd		= 0;
vspd		= 0;