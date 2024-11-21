/// @description Insert description here
// You can write your code in this editor
if (x >= 1170 and global.Gen == 0) {
		instance_destroy()
		instance_destroy(ObRandGen2)
		instance_destroy(ObRandGen4)
		instance_create_layer(x+72,y+72,layer,Obj_Door)

		global.Rooms = 1
	}
if (global.Gen == 0) {
	if (dir2 == 0 and place_meeting(x,y+120,ObRandGen3)) {
		dir = 0
	}
	if (dir2 == 1 and place_meeting(x,y-120,ObRandGen3)) {
		dir = 0
	}
	if (dir == 1) {
		if (dir2 == 0) {
			y = y+120
		}
		if (dir2 == 1) {
			y = y-120
			instance_create_layer(x+36,y+96,layer,Obj_Wall_Killl)
		}
	}
	if (dir == 0) {
		x = x+120
	}
	global.Gen = 1;
	dir = choose(0,1)
//	if (y >= 670 and dir == 1) {
//		dir = 0
//	}
	if (y >= 550) {
		dir2 = 1
		first = 1
	}
	if (y <= 60 and first == 1) {

		dir2 = 0
	}
}





