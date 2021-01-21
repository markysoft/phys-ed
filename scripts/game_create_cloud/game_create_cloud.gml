// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function game_create_cloud(){
	var ypos = 90 + random_range(0, 30)
    var cloud = instance_create_layer(30, ypos, layer, obj_cloud);
}