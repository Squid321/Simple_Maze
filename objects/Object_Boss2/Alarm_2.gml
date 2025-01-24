/// @description Insert description here
// You can write your code in this editor
place = choose(1,2,3)
switch(place) {
	case(1):
		instance_create_layer(irandom_range(Obj_Splime.x-50,Obj_Splime.x+50),750,layer,ObVine)
		global.from = 1
	break;
	case(2):
		instance_create_layer(10,irandom_range(Obj_Splime.y-10,Obj_Splime.y+10),layer,ObVine)
		global.from = 2
	break;
	case(3):
		instance_create_layer(1356,irandom_range(Obj_Splime.y-10,Obj_Splime.y+10),layer,ObVine)
		global.from = 3
	break;
}
alarm[2] = 60 * 5