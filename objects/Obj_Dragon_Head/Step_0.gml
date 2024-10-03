/// @description Insert description here
// You can write your code in this editor
SegmentDelay -= .1
if (SegmentDelay <= 0) {
	SegmentDelay = 1
	instance_create_layer(x,y,layer,Obj_Segment)
	speedh += random_range(-1,1)
	speedv += random_range(-1,1)
	if (abs(speedh) + abs(speedv) < 1){
		speedh += speedh/20
		speedv += speedv/20
	}
	if (speedh > 1) {
		speedh = 1
	}
	if (speedh < -1) {
		speedh = -1
	}
	if (speedv > 1) {
		speedv = 1
	}
	if (speedv < -1) {
		speedv = -1
	}
	while (abs(speedh) + abs(speedv) = 0){
		speedh += random_range(-1,1)
		speedv += random_range(-1,1)
		if (abs(speedh) + abs(speedv) < 1){
			speedh = speedh/10
			speedv = speedv/10
		}
		if (speedh > 1) {
			speedh = 1
		}
		if (speedh < -1) {
			speedh = -1
		}
		if (speedv > 1) {
			speedv = 1
		}
		if (speedv < -1) {
			speedv = -1
		}
	}
	hspeed = speedh
	vspeed = speedv
}





