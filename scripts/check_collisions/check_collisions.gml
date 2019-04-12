/// @description	Check For Collisions with Wall Objects.
// ---------------------------------------------------------

// Horizontal
if (place_meeting(x + hspd, y, oWall)) {
	while (!place_meeting(x + sign(hspd), y, oWall)) {
		x += sign(hspd);	
	}
	hspd = 0;
}
x += hspd;

// Vertical
if (place_meeting(x, y + vspd, oWall)) {
	while (!place_meeting(x, y + sign(vspd), oWall)) {
		y += sign(vspd);	
	}
	vspd = 0;
}
y += vspd;