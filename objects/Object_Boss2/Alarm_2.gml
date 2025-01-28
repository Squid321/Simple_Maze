/// @description Insert description here
// You can write your code in this editor
place = choose(1,1,1,1,1,2,3)
switch(place) {
	case(1):
		global.from = 1
		instance_create_layer(irandom_range(Obj_Splime.x-50,Obj_Splime.x+50),750,layer,ObVine)
		
	break;
	case(2):
		global.from = 2
		instance_create_layer(10,irandom_range(Obj_Splime.y-10,Obj_Splime.y+10),layer,ObVine)
		
	break;
	case(3):
		global.from = 3
		instance_create_layer(1356,irandom_range(Obj_Splime.y-10,Obj_Splime.y+10),layer,ObVine)
		
	break;
}
alarm[2] = 60 * 2.5