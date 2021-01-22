/// @description Insert description here
// You can write your code in this editor
instance_destroy();
if(room101)
{
	if (instance_exists(obj_Control)) {
		obj_Control.alarm[3] = 180;
	}
}
else
{
	if (instance_exists(obj_new_game)) {
		obj_new_game.alarm[0] = 60;
	}
}