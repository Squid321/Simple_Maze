if (place_meeting(x,y+1,Obj_Wall) and delay < 0) {
	if (place_meeting(x-50,y,Obj_Splime)) {
		vspeed = -2
		delay = 4
		dir = -1
	}
	if (place_meeting(x+50,y,Obj_Splime)) {
		delay = 4
		vspeed = -2
		dir = 1
	}
}
if (delay > 0) {
	delay -= .1
}
if (delay == 0) {
	if (dir == -1){
		y = y-1
		vspeed = -2
		hspeed = -4
	}
	if (dir == 1) {
		y = y-1
		vspeed = -2
		hspeed = 4
	}
	delay -= 1
}
vspeed += .25