/// @description Setup Physics


var fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, 0, -(sprite_height / 2));
physics_fixture_add_point(fixture, sprite_width / 2, 8);
physics_fixture_add_point(fixture, -(sprite_width / 2), 8);
physics_fixture_set_density(fixture, 0.8);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_linear_damping(fixture, 0.6);
physics_fixture_set_angular_damping(fixture, 0.6);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);

fixture = physics_fixture_create();
physics_fixture_set_polygon_shape(fixture);
physics_fixture_add_point(fixture, 0, sprite_height / 2);
physics_fixture_add_point(fixture, -(sprite_width / 2), -8);
physics_fixture_add_point(fixture, sprite_width / 2, -8);
physics_fixture_set_density(fixture, 0.8);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_linear_damping(fixture, 0.6);
physics_fixture_set_angular_damping(fixture, 0.6);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);