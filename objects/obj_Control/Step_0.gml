/// @description Create Instances

if (mouse_check_button(mb_left) && (alarm[0] < 0))
    {
    instance_create_layer(mouse_x, mouse_y, layer, choose(obj_Block, obj_Circle, obj_Triangle, obj_Star));
    alarm[0] = 5;
    }
	
if mouse_check_button(mb_right)
    {
    with (obj_DynamicParent)
        {
        var dir = point_direction(mouse_x, mouse_y, x, y);
        // physics_apply_impulse(x, y, lengthdir_x(100, dir), lengthdir_y(100, dir));
        physics_apply_force(x, y, lengthdir_x(100, dir), lengthdir_y(100, dir));
        }
    }

// Create particles at mouse position
if mouse_check_button(mb_middle)
    {
	physics_particle_create(flags1, mouse_x - 32 + random(64), mouse_y - 32 + random(64), 0, 0, c_white, 1, 1);
	}

// Create a particle group
if keyboard_check_pressed(vk_space)
	{
	physics_particle_group_begin(flags2, groupflags, mouse_x, mouse_y, 0, 0, 0, 0, c_white, 1, 1, 2);
	physics_particle_group_circle(50);
	physics_particle_group_end();
	}

// Check if there are any particles
if physics_particle_count() > 0
	{
	// Remove any particles that go outside the room
	physics_particle_delete_region_box(room_width / 2, room_height + 64, room_width, 64);
	physics_particle_delete_region_box(-64, room_height / 2, 64, room_height);
	physics_particle_delete_region_box(room_width + 64, room_height / 2, 64, room_height);
	}
	