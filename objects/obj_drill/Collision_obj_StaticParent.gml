/// @description Insert description here
// You can write your code in this editor
//only destroy one
if (!exploded) {
	tiles_to_remove--
	instance_destroy(other)
	if (tiles_to_remove == 0){
		exploded = true
		effect_create_above(ef_explosion, x, y, 1, c_yellow);
	}
}