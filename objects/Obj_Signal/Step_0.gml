/// @description Insert description here
// You can write your code in this editor
lifespan -= .1
if (lifespan <= 0) {
	instance_destroy()
}
if (lifespan <= 4) {
	image_xscale = 2
	image_yscale = 2
}
if (lifespan <= 3.5) {
	image_xscale = 3
	image_yscale = 3
}
if (lifespan <= 3) {
	image_xscale = 4
	image_yscale = 4
}
if (lifespan <= 2.5) {
	image_xscale = 6
	image_yscale = 6
}
if (lifespan <= 2) {
	image_xscale = 8
	image_yscale = 8
}






