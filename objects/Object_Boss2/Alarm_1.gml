/// @description Insert description here
// You can write your code in this editor
if (HP > 100) {
	attack = choose(1,1,1,1,1,1,1,2,2,2,2,3,3,3,4,4,4,5,1,1)
}
if (HP > 50 and HP <= 100) {
	attack = choose(1,1,1,1,1,1,2,2,2,2,2,2,3,3,3,3,4,4,4,5)
}
if (HP > 25 and HP <= 50) {
	attack = choose(1,1,1,1,1,1,1,2,3,3,3,3,3,3,3,3,4,4,4,5)
}
if (HP <= 25) {
	attack = choose(1,1,2,2,3,3,3,3,3,3,3,4,4,4,4,4,4,4,5,5)
}
//generic,fast,boom,homing,spider
//fruit,stick,nut,leaf,spider
//120,60,180,60,1
switch(attack) {
	case(1):
		instance_create_layer(x,100,layer,ObFruit)
		alarm[1] = 120
	break;
	case(2):
		instance_create_layer(x,100,layer,ObStick)
		alarm[1] = 90
	break;
	case(3):
		instance_create_layer(x,100,layer,ObNut)
		alarm[1] = 180
	break;
	case(4):
		instance_create_layer(x,100,layer,ObLeaf)
		alarm[1] = 60
	break;
	case(5):
		instance_create_layer(x,100,layer,ObSpider)
		alarm[1] = 1
	break;
}