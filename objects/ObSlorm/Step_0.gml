/// @description Insert description here
// You can write your code in this editor
Delay -= .1
if (Delay <= 0) {
	instance_create_layer(x+10,y+10,layer,ObSpit)
	Delay = 6
}
if (Obj_Splime.x > x) {
	image_xscale = -1
}
if (Obj_Splime.x < x) {
	image_xscale = 1
}





