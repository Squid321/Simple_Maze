/// @description Insert description here
// You can write your code in this editor
if (1 == 0) {
	if (mode == 1) {
		hspeed = 10
		vspeed = 0
		if (x >= 1340) {
			mode = 2
			hspeed = 0
			vspeed = 10
		}
	}
	if (mode == 2) {
		hspeed = 0
		vspeed = 10
		if (y >= 735) {
			mode = 3
			hspeed = -10
			vspeed = 0
		}
	}
	if (mode == 3) {
		hspeed = -10
		vspeed = 0
		if (x <= 18) {
			mode = 4
			hspeed = 0
			vspeed = -10
		}
	}
	if (mode == 4) {
		hspeed = 0
		vspeed = -10
		if (y <= 18) {
			mode = 1
			hspeed = 10
			vspeed = 0
		}
	}
}