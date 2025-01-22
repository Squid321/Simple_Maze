/// @description Insert description here
// You can write your code in this editor
if (global.Gen == 1) {
	hspeed = (ObRandGen.x - (x - 24)) / 10
	vspeed = (ObRandGen.y - (y - 24)) / 10
}
//if (global.Gen == 1 and abs(vspeed) <= 0.2 and abs(hspeed) <= 0.2) {

//}
if (global.Gen == 1 and vspeed < 0.2 and hspeed < 0.2) {
	x = ObRandGen.x + 24
	y = ObRandGen.y + 24
}

if (global.Gen == 1 and vspeed == 0 and hspeed == 0) {
	global.Gen = 0
	
	instance_create_layer(x,y,layer,ObRandGen3)
}





    