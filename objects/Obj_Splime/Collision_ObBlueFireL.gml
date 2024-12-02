/// @description Insert description here
// You can write your code in this editor
if (other.cd = 1) {
	global.Armor -= other.pow
	if (global.Armor < 0) {
		room_restart()
	}
	other.cd = 0
}





