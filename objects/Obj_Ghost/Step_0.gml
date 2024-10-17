/// @description Insert description here
// You can write your code in this editor
SegmentDelay -= .1
if (SegmentDelay <= 0) {
	SegmentDelay = 1
	instance_create_layer(x,y,layer,Obj_Ghost_Trail)
}
if (delay > 0) {
	delay -= .1
}





