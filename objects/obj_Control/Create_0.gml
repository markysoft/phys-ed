/// @description Initialise Physics Particles

physics_particle_set_radius(4);
physics_particle_set_max_count(5000);
flags1 = phy_particle_flag_water; // | phy_particle_flag_tensile;
flags2 = phy_particle_flag_water | phy_particle_flag_viscous | phy_particle_flag_spring;
groupflags = phy_particle_group_flag_solid; // | phy_particle_group_flag_rigid;

physics_particle_set_density(0.5);
physics_particle_set_damping(1);

