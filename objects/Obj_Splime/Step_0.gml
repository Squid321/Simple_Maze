ladder -= .1
global.posX = x;
global.posY = y;
Wjump = 0;
//if (global.atkk = 1) {
//	vspeed = 0
//}
if (hspeed == 0) {
	image_speed = 0
}
if (Akey == true) {
	hspeed = -2;
	image_speed = 2;
	Direction = 0
}
if (Dkey == true) {
	hspeed = 2;
	image_speed = 2;
	Direction = 1
}
if (Akey == true and Dkey == true) {
	hspeed = 0;
	Direction = .5
}
if (Akey == false and Dkey == false) {
	if (no == 0) {
		hspeed = 0;
	}
}
if (grip <= 0 and not place_meeting(x,y+vspeed,Obj_Wall) and not place_meeting(x,y+vspeed,Obj_Wall_Debug) and yes == 0) {
	vspeed += .25
}
//Collision
//Wall
if (place_meeting(x+hspeed,y,Obj_Wall)) {
	hspeed = 0
}
if (place_meeting(x,y+1,Obj_Wall) and yes == 0) {
	no = 0
}
if (place_meeting(x,y+vspeed,Obj_Wall)) {
	vspeed = 0
}
if (place_meeting(x+2,y,Obj_Wall) and Dkey == true and Skey == false and Wkey == false) {
	vspeed = 0
	Wjump = 1;
}
if (place_meeting(x-2,y,Obj_Wall) and Akey == true and Skey == false and Wkey == false) {
	vspeed = 0
	Wjump = 1;
}
//Debug Wall
if (place_meeting(x+hspeed,y,Obj_Wall_Debug)) {
	hspeed = 0
}
if (place_meeting(x,y+vspeed,Obj_Wall_Debug)) {
	vspeed = 0
}
//Platform
if (place_meeting(x,y+1,Obj_Wall2) and yes == 0) {
	no = 0
}
if (place_meeting(x,y+vspeed,Obj_Wall2) and vspeed > 0 and Skey == false and not place_meeting(x,y,Obj_Wall2)) {
	vspeed = 0
}
//
//Damage Stuff
if (global.Armor < 4) {
	global.Armor += .001
}
if (global.Iframes > 0) {
	global.Iframes -= .01
}
//
//Dodging
if (global.Iframes <= .16 and yes == 1) {
	hspeed = hspeed* .9
	vspeed = vspeed * .9
	if (global.atkk == 1) {
		hspeed = hspeed * .8
		vspeed = vspeed * .8
	}
	
	if (abs(hspeed) < 1) {
		yes = 0
	}
}
//
if (fall_delay > 0 and ladder <= 0) {
	fall_delay -= .01
}
if (fall_delay <= 0) {
	Climb = false
}
if (global.Iframes <= 0) {
	global.Iframes = 0
}
if (Direction == 0) {
	image_xscale = -1;
}
if (Direction == 1) {
	image_xscale = 1;
}
if (ladder <= 0 and grip > 0) {
grip -= .25
}
if (ladder == true) {
grip = 1	
}
if (Move_Delay > 0) {
	Move_Delay -=.025
}
if (Move_Delay <= 0) {
	
	Can_Move = true;
}
if (attackk == 1 and Move_Delay <= .8) {
	if (image_xscale = 1) {
		global.dir = 1
		instance_create_layer(x+12,y,layer,Obj_Fire)
		instance_create_layer(x+12,y,layer,Obj_Fire_)
	}
	if (image_xscale = -1) {
		global.dir = -1
		instance_create_layer(x-12,y,layer,Obj_Fire)
		instance_create_layer(x-12,y,layer,Obj_Fire_)
	}
	attackk = 0
}
if (global.stun == 1) {
	Move_Delay = 5;
	global.stun = 0
}