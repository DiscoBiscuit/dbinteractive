//get the global settings for a new ranger...
global.rangerdirection = argument2
global.rangerdistance = argument3
global.rangersolid = argument4
//and then fire it. The util_ranger entity uses those global values in its create event
instance_create(argument0,argument1,util_ranger)
