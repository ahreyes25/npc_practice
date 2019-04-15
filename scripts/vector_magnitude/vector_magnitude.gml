/// @description			Get the Magnitude of a Vector
///	returns magnitude	->	floating poitn magitude value
/// @param	[v1, v2]	->	world x coordinate
/// ------------------------------------------------------------------------

var vector = argument0;

var aComponent = vector[0];
var bComponent = vector[1];

var magnitude = sqrt((aComponent * aComponent) + (bComponent * bComponent));

return magnitude;