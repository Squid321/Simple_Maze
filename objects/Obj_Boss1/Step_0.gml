/// @description Insert description here
// You can write your code in this editor
if (spo <= 0) {
	att_delay -= .1
}
if (hspeed == 0) {
	image_speed = 0
}
	
if (att_delay == 0) {
	att_delay = 0
	ready = 1
}

if (spo >= 0) {
	spo -= .1
}
if (spo < 0) {
	hspeed = 0;
}
if (Delay > 0) {
	Delay -= .1
}
if (att_delay <= -20) {
	att_delay = 1
}
if (hspeed < 0) {
	image_xscale = 1;
	image_speed = 1
	Direction = 0;
}
if (hspeed > 0) {
	image_xscale = -1;
	image_speed = 1
	Direction = 1;
}
if (ready == 1) {
	att = choose(1,2,3)
	ready = 0
	if (att == 1) {
		Delay = 12
	}
	if (att == 2) {
		Delay = 6
	}
	if (att == 3) {
		Delay = 16
		instance_create_layer(x,y+4,layer,Obj_Signal)
	}
}
if (Delay > 3 and Delay < 4) {
	if (att == 2) {
		vspeed = -2
	}
}
if (Delay == 0) {
	if (att == 1) {
		x = global.posX
		y = global.posY - 200
		att_delay = 5
	}
	if (att == 2) {
			vspeed = -4
			if (global.posX > x) {
				hspeed = 5
			}
			if (global.posX < x) {
				hspeed = -5
			}
		spo = 6;
		att_delay = 5
	}
	if (att == 3) {
		if (global.posX > x-100 and global.posX < x+100 and global.posY > y-100 and global.posY < y+100) {
			
		}
		att_delay = 5
	}	
	Delay = -1
}
vspeed += .25
if (HP <= 0) {
	instance_destroy()
}



