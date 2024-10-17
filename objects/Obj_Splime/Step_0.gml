ladder -= .1
if (hspeed == 0) {
	image_speed = 0
}
if (hspeed == 0) {
	image_speed = 0
}
if (Akey == false and Dkey == false){
	hspeed = 0
}
if (global.Armor < 1) {
	global.Armor += .001
}
if (global.Iframes > 0) {
	global.Iframes -= .01
}
if (fall_delay > 0 and ladder <= 0) {
	fall_delay -= .01
}
if (fall_delay <= 0) {
	Climb = false
}
if (global.Iframes <= 0) {
	global.Iframes = 0
}
if (hspeed < 0) {
	image_xscale = -1;
	Direction = 0;
}
if (hspeed > 0) {
	image_xscale = 1;
	Direction = 1;
}
if (ladder <= 0 and grip > 0) {
grip -= .25
}
if (ladder == true) {
grip = 1	
}
if (grip <= 0) {
	vspeed += .25
}
if (Move_Delay > 0) {
	Move_Delay -=.025
}
if (Move_Delay <= 0) {
	
	Can_Move = true;
}
if (attack == 1 and Move_Delay <= .8) {
	if (image_xscale = 1) {
		instance_create_layer(x+26,y,layer,Obj_Fire_Right)
		instance_create_layer(x+26,y,layer,Obj_Fire_Right2)
	}
	if (image_xscale = -1) {
		instance_create_layer(x-26,y,layer,Obj_Fire_Left)
		instance_create_layer(x-26,y,layer,Obj_Fire_Left2)
	}
	attack = 0
}
if (global.stun = 1) {
	Move_Delay = 5;
}