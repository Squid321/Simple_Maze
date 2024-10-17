/// @description Insert description here
// You can write your code in this editor
att_delay -= .1

	
if (att_delay == 0) {
	att_delay = 0
	ready = 1
}

if (spo >= 0) {
	spo -= .1
}
if (spo <= 0) {
	hspeed = 0;
}
if (Delay > 0) {
	Delay -= .1
}
if (att_delay <= -20) {
	att_delay = 1
}
if (hspeed < 0) {
	image_xscale = -1;
	Direction = 0;
}
if (hspeed > 0) {
	image_xscale = 1;
	Direction = 1;
}
if (ready == 1) {
	att = choose(1,2,3)
	ready = 0
	if (att == 1) {
		Delay = 1
	}
	if (att == 2) {
		Delay = 6
	}
	if (att == 3) {
		Delay = 12
		instance_create_layer(x,y-18,layer,Obj_Signal)
	}
}
if (Delay == 0) {
	if (att == 1) {
		x = Obj_Splime.x
		y = Obj_Splime.y - 200
		att_delay = 5
	}
	if (att == 2) {
		if (Obj_Splime.y > y-20 and Obj_Splime.y < y+20) {
			if (Obj_Splime.x > x) {
				hspeed = 2
			}
			if (Obj_Splime.x < x) {
				hspeed = -2
			}
		spo = 6;
		att_delay = 5
		}
	}
	if (att == 3) {
		if (Obj_Splime.y > y-100 and Obj_Splime.y < y+100 and Obj_Splime.y > y-100 and Obj_Splime.y < y+100) {
			global.stun = 1;
		}
		att_delay = 5
	}	
	Delay = -1
}
vspeed += .25
if (HP <= 0) {
	instance_destroy()
}



