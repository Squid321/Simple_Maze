/// @description Insert description here
// You can write your code in this editor
dir = choose(1,2,3)
if (dir == 1) {
	hspeed = 12
}
if (dir == 2) {
	vspeed = 12
}
if (dir == 3) {
	hspeed = 12
	instance_create_layer(x,y,layer,ObRandDestroy)
}
lifespan = .8