/// @description Attack
// You can write your code in this editor

//Can_Move = false;
//hspeed = 0
//Move_Delay = .2;

//Dkey = false
//Akey = false
//Dodge Without Iframe
if (global.atkk == 0) {
	if (no == 0) {

		yes = 0
		no = 1
		hspeed = 0
		vspeed = 0
		if not (Akey == true and Dkey == true) {
			if (Dkey == true) {
				Dkey = false
				hspeed = 4
				yes = 1
			}
			if (Akey == true) {
				Akey = false
				hspeed = -4
				yes = 1
			}
		}
		if not (Descend == true and Wkey == true) {
			if (Descend == true) {
				vspeed = 4
				yes = 1
			}
			if (Wkey == true) {
				vspeed = -4
				yes = 1
			}
			if (yes == 1) {
				Can_Move = false;
				Move_Delay = .5;
				stop_delay = .5;
			}
		}
	}
	attackk = 1;
}