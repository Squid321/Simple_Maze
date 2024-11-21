/// @description Insert description here
// You can write your code in this editor
if (global.Rooms >= 1 and global.Rooms < 2) {
	if (ran == 1) {
		if (place_meeting(x+120,y,ObRandGen3)) {
			join = 1
			instance_destroy(other)
			long = 1
			instance_create_layer(x,y,layer,Obj_Coins)
			instance_create_layer(x+72,y-24,layer,Obj_Wall_Killl)
			instance_create_layer(x+72,y+48,layer,Obj_Wall_Killl)
		}
	}
	if (ran == 2) {
		if (place_meeting(x,y+120,ObRandGen3)) {
			join = 1
			instance_destroy(other)
			tall = 1
			instance_create_layer(x,y,layer,Obj_Coins)
			instance_create_layer(x-24,y+72,layer,Obj_Wall_Killl)
			instance_create_layer(x+48,y+72,layer,Obj_Wall_Killl)
		}
	}
	if (ran == 3) {
		if (place_meeting(x-120,y,ObRandGen3)) {
			other.join = 1
			instance_destroy()
			other.long = 1
			instance_create_layer(x,y,layer,Obj_Coins)
			instance_create_layer(x-48,other.y-24,layer,Obj_Wall_Killl)
			instance_create_layer(x-48,other.y+48,layer,Obj_Wall_Killl)
		}
	}
	if (ran == 4) {
		if (place_meeting(x,y-120,ObRandGen3)) {
			other.join = 1
			instance_destroy()
			other.tall = 1
			instance_create_layer(x,y,layer,Obj_Coins)
			instance_create_layer(x-24,y-48,layer,Obj_Wall_Killl)
			instance_create_layer(x+48,y-48,layer,Obj_Wall_Killl)
		}
	}
	if (ran == 5) {
		if (place_meeting(x+120,y+120,ObRandGen3)) {
			join = 1
			instance_destroy(other)
			jumbo = 1
			instance_create_layer(x,y,layer,Obj_Coins)
			instance_create_layer(x-24,y-24,layer,ObWallClear)
		}
		if (place_meeting(x,y+120,ObRandGen3)) {
			instance_destroy(other)
		}
		if (place_meeting(x+120,y,ObRandGen3)) {
			instance_destroy(other)
		}
	}
}




if (global.Rooms >= 2) {
	if (join == 0) {
		ran = choose(0,1,2,3)
		if (ran = 1) {
			instance_create_layer(x-24,y+48,layer,Obj_Spike)
		}
		if (ran = 2) {
			instance_create_layer(x+48,y+48,layer,Obj_Spike)
		}
		if (ran = 3) {
			instance_create_layer(x+24,y-24,layer,ObSlorm2)
		}
		if (ran = 4) {
			instance_create_layer(x,y-24,layer,ObSlorm2)
		}
	}
	if (long == 1) {

		if (ran > 0) {
			
		}
	}
	if (tall == 1) {
		
		if (ran > 0) {
			
		}
	}
	if (jumbo == 1) {
		instance_create_layer(x-12,y-12,layer,ObWallClear)
	
		if (ran > 0) {
			
		}
	}





	instance_destroy()	
}







