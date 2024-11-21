/// @description Insert description here
// You can write your code in this editor
lifespan -= 1
if (lifespan <= 0) {
	instance_destroy()
}

if (side == 1) {
	if (image_angle >= -15) {
		image_angle -= spd
	}
}
if (side == -1) {

	if (image_angle <= 15) {
	 image_angle += spd
	}
}
spd = spd/2
hspeed = Obj_Splime.hspeed
vspeed = Obj_Splime.vspeed


