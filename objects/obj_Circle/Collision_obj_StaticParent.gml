/// @description Insert description here
// You can write your code in this editor
//only destroy one
if (!exploded) {
instance_destroy(other)
if (bounces > 0) {
 } else {
  exploded = true
  effect_create_above(ef_explosion, x, y, 1, c_yellow);
 }
}
bounces--