if (hspeed == 0) {
	image_speed = 0
}
if (hspeed == 0) {
	image_speed = 0
}
if (Akey == false and Dkey == false){
	hspeed = 0
}
if (Armor < 1) {
	Armor += .001
}
if (Iframes > 0) {
	Iframes -= .01
}
if (hspeed < 0) {
	image_xscale = -1;
	
}
if (hspeed > 0) {
	image_xscale = 1;
}
if (Climb == false) {
	vspeed += 1
}