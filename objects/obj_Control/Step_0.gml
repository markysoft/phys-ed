/// @description Create Instances

//if (mouse_check_button(mb_left) && (alarm[0] < 0))
    //{
    //instance_create_layer(mouse_x, mouse_y, layer,  obj_Circle);
   // alarm[0] = 5;
    //}

// Check if there are any particles
if physics_particle_count() > 0
	{
	// Remove any particles that go outside the room
	physics_particle_delete_region_box(room_width / 2, room_height + 64, room_width, 64);
	physics_particle_delete_region_box(-64, room_height / 2, 64, room_height);
	physics_particle_delete_region_box(room_width + 64, room_height / 2, 64, room_height);
	}
	
	
if (instance_exists(obj_Duck)) {
	duck_height = room_height - round(obj_Duck.y);
	if (duck_height > duck_height_end) {
		room_goto(rm_gameover);
	}
}