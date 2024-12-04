/// @description Insert description here
// You can write your code in this editor
lifespan -= .01
if (lifespan == 4) {
move_towards_point(Obj_Splime.x,Obj_Splime.y,8)
}
if (lifespan <= 0) {
	instance_destroy()
}






