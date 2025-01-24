/// @description Insert description here
// You can write your code in this editor
vspeed = 8
aim = choose(1,2)
switch(aim) {
	case(1):
		x = Obj_Splime.x-irandom_range(90,120)
		hspeed = 1
	break;
	case(2):
		x = Obj_Splime.x+irandom_range(90,120)
		hspeed = -1
	break;
}