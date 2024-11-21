/// @description Insert description here
// You can write your code in this editor
if (global.Rooms >= 1 and global.Rooms < 3) {
	global.Rooms += .01
}
if	(global.Rooms == 3) {
	instance_destroy(ObLoad)
	instance_destroy(ObLoad2)
	instance_destroy(Obj_WallB)
	global.Rooms = 0
}





