/// @description Insert description here
// You can write your code in this editor
if (Obj_Body_1.x > x) {
	hspeed += .1
}
if (Obj_Body_1.x < x) {
	hspeed -= .1
}
if (Obj_Body_1.y > y) {
	vspeed += .1
}
if (Obj_Body_1.y < y) {
	vspeed -= .1
}
if (abs(hspeed) > 4) {
	hspeed = sign(hspeed) * 4
}
if (abs(vspeed) > 4) {
	vspeed = sign(vspeed) * 4
}