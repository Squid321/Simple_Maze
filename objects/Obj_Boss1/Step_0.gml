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
	if (att == 4) {
		fin -= 1
		if (choose(1,2,3,4,5,6,7,8,9,10) == 10) {
			att = 1
		}
	}
	if (att == 5) or (att == 6) {
		att = -1
	}
	if not (att == 4) {
		att = choose(1,2,3,4,5,6)
	}
	if (att == -1) {
		att = choose(1,2,3,5,5,5,6,6,6)
	}
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
	if (att == 4) {
		Delay = 1
		fin = choose(12,13,14,15,16,17,18,19,20,21,22,23,24)
		instance_create_layer(x,y,layer,ObBlueFireL)
		instance_create_layer(x,y,layer,ObBlueFireR)
	}
	if (att == 5) {
		Delay = 4
		instance_create_layer(Obj_Splime.x+160,Obj_Splime.y+160,layer,ObOrbOfDeath)
		instance_create_layer(Obj_Splime.x-160,Obj_Splime.y+160,layer,ObOrbOfDeath)
		instance_create_layer(Obj_Splime.x-160,Obj_Splime.y-160,layer,ObOrbOfDeath)
		instance_create_layer(Obj_Splime.x+160,Obj_Splime.y-160,layer,ObOrbOfDeath)
	}
	if (att == 6) {
		Delay = 4
		instance_create_layer(Obj_Splime.x+160,Obj_Splime.y,layer,ObOrbOfDeath)
		instance_create_layer(Obj_Splime.x-160,Obj_Splime.y,layer,ObOrbOfDeath)
		instance_create_layer(Obj_Splime.x,Obj_Splime.y-160,layer,ObOrbOfDeath)
		instance_create_layer(Obj_Splime.x,Obj_Splime.y-160,layer,ObOrbOfDeath)
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
	if (att == 4) {
		att_delay = .5
	}
	Delay = -1
}
vspeed += .25
if (HP <= 0) {
	instance_destroy()
}



