/// @description Insert description here
// You can write your code in this editor
lifespan -= .1
if (lifespan <= 0) {
	instance_destroy()
	instance_create_layer(x,y,layer,ObRandDestroy2)
}
if (place_meeting(x,y,ObRandDestroy)) {
	instance_destroy()
}


