/// @description Insert description here
// You can write your code in this editor
randomize()
if (vspeed == 1) {
	vspeed = 0
	hspeed = random_range(1,1)
	if (hspeed == 0) {
		hspeed = -1
	}
}
if (vspeed == -1) {
	vspeed = 0
	hspeed = random_range(1,1)
	if (hspeed == 0) {
		hspeed = -1
	}
}
if (hspeed == -1) {
	hspeed = 0
	vspeed = random_range(1,1)
	if (vspeed == 0) {
		vspeed = -1
	}
}
if (hspeed == 1) {
	hspeed = 0
	vspeed = random_range(1,1)
	if (vspeed == 0) {
		vspeed = -1
	}
}




