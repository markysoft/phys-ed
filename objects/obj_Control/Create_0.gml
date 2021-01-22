/// @description Initialise Physics Particles

physics_particle_set_radius(2);
physics_particle_set_max_count(20000);
flags1 = phy_particle_flag_water; // | phy_particle_flag_tensile;
flags2 = phy_particle_flag_viscous // | phy_particle_flag_viscous // | phy_particle_flag_spring;
groupflags = phy_particle_group_flag_solid; // | phy_particle_group_flag_rigid;

physics_particle_set_density(0.5);
physics_particle_set_damping(1);

alarm[1] = 1

// Fill pond
if (room == room0) {
	physics_particle_group_begin(flags2, groupflags, 462, 672, 0, 0, 0, 0, c_white, 1, 1, 2)
	physics_particle_group_box(32, 16)
	physics_particle_group_end()
}

alarm[2] = 60

// Height for duck. 16 is the block size
duck_height_ok = 9 * 16
duck_height_warn = 11 * 16
duck_height_end = 13 * 16