/// @description Insert description here
// You can write your code in this editor

var x_pos = x - sprite_width / 2
var increment = (sprite_width - 18 )/ num_droplets
for (var i = 0; i < num_droplets; i++) {
	x_pos += increment
	with (obj_Control) {
		physics_particle_group_begin(flags2, groupflags, x_pos, other.y, 0, 0, 0, 0, c_white, 1, 1, 2)
		physics_particle_group_box(1, 1)
		physics_particle_group_end()
	}
}
alarm[0] = 60