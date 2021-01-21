/// @description Setup Physics


var fixture = physics_fixture_create();
physics_fixture_set_box_shape(fixture, sprite_width / 2, sprite_height / 2);
physics_fixture_set_density(fixture, 0);
physics_fixture_set_restitution(fixture, 0.1);
physics_fixture_set_friction(fixture, 0.2);
physics_fixture_bind(fixture, id);
physics_fixture_delete(fixture);