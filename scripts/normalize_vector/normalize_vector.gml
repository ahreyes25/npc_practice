/// @description			Normalize a 2D Vector
///	returns [vn1, vn2]	->	array pair of normalized vectors
/// @param	[v1, v2]	->	world x coordinate
/// ------------------------------------------------------------------------

var vector = argument0;

var aComponent = vector[0];
var bComponent = vector[1];

var magnitude = sqrt((aComponent * aComponent) + (bComponent * bComponent));

var aNormalized = aComponent / magnitude;
var bNormalized = bComponent / magnitude;

return [aNormalized, bNormalized];