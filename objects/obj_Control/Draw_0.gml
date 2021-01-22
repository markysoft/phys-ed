/// @description Draw Particles

//physics_particle_draw(flags1, 1, spr_Water, 0);
physics_particle_draw(flags2, 2, spr_Water_sm, 0);

// Show score
draw_set_halign(fa_right);
draw_text(room_width - 30, 20, "Particles: " + string(physics_particle_count()));

duck_id = instance_find(obj_Duck, 0);
if (duck_id > 0) {
	duck_height = room_height - round(duck_id.y);
	// 16 is the size of the block
	if (duck_height < duck_height_ok) {
		draw_set_color(c_green);
	} else if (duck_height < duck_height_warn) {
		draw_set_color(c_orange);
	} else {
		draw_set_color(c_red);
	}
	draw_text(room_width - 30, 40, "Duck height:" + string(round(duck_id.y)));
}

draw_set_color(c_white)