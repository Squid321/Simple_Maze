/// @description Insert description here
// You can write your code in this editor
if (HP <= 0) {
	room_goto(Maze)
}
if (mode == 1) {
	if (Obj_Splime.x > x) {
		hspeed += .1
	}
	if (Obj_Splime.x < x) {
		hspeed -= .1
	}
	if (Obj_Splime.y > y) {
		vspeed += .1
	}
	if (Obj_Splime.y < y) {
		vspeed -= .1
	}
	if (abs(hspeed) > 4) {
		hspeed = sign(hspeed) * 4
	}
	if (abs(vspeed) > 4) {
		vspeed = sign(vspeed) * 4
	}
}
if (mode == 2) {
	if (Obj_Splime.x > x) {
		hspeed += .2
	}
	if (Obj_Splime.x < x) {
		hspeed -= .2
	}
	if (Obj_Splime.y > y) {
		vspeed += .2
	}
	if (Obj_Splime.y < y) {
		vspeed -= .2
	}
	if (abs(hspeed) * (vspeed) > 64) {
		hspeed = hspeed * .1
		vspeed = vspeed * .1
	}
}
if (mode == 3) {
	move_towards_point(Obj_Decoy.x,Obj_Decoy.y,6)
}
if (mode == 4) {
	if (x <= room_width/2 + 2 and x >= room_width/2 - 2) {
		if (y >= 48 and y <= 52) {
			mode = 4.1
			alarm[8] = 60 * 1.5
		}
	}
	else {
		move_towards_point(room_width/2,50,4)
	}
}
if (mode == 4.1) {
	hspeed = 0
	vspeed = 8
}
if (mode == 5) {
	move_towards_point(Obj_Decoy_1.x,Obj_Decoy_1.y,6)
}
image_angle = direction + 90