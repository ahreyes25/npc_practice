/// @param v1
/// @param v2

var u = argument0;
var v = argument1;

var uDotV	 = (u[0] * v[0]) + (u[1] * v[1]);
var uMag	 = vector_magnitude(u);
var vMag	 = vector_magnitude(v);
var cosTheta = uDotV / (uMag * vMag); 

return darccos(cosTheta);
