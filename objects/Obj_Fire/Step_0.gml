/// @description Insert description here
// You can write your code in this editor
lifespan -= 1
if (lifespan <= 0) {
	instance_destroy()
}
if (side == 1) {
image_angle -= spd
}
if (side == -1) {
image_angle += spd
}
spd = spd/2
if (object_exists(Obj_Fire_)) {
x = Obj_Fire_.x
y = Obj_Fire_.y
}
