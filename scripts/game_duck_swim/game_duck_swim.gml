// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_duck_swim(){

	var force = choose(200,-200)
	physics_apply_local_force(0, 0, force, 0)
	alarm[0] = 60 * random_range(1,5)
}