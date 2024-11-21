/// @description Insert description here
// You can write your code in this editor
ran = choose(1)
if (ran = 1) {
	instance_create_layer(x,y,layer,Obj_Wall)
	instance_create_layer(x+72,y,layer,Obj_Wall)
	instance_create_layer(x,y+24,layer,Obj_Wall)
	instance_create_layer(x,y+48,layer,Obj_Wall)
	instance_create_layer(x,y+72,layer,Obj_Wall)
	instance_create_layer(x+24,y+72,layer,Obj_Wall)
	instance_create_layer(x+48,y+72,layer,Obj_Wall)
	instance_create_layer(x+72,y+72,layer,Obj_Wall)
}



instance_destroy()