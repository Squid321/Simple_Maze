/// @description Insert description here
// You can write your code in this editor
if (other.image_index == 1) {
	if (global.Iframes <= 0) {
		global.Armor -= 1
		global.Iframes = 1
	}
	if (global.Armor < 0) {
		room_restart()
	}
}





