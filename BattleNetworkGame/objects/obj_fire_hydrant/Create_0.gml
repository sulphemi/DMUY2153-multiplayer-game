lifetime = 140

alarm[0] = 120;

hitbox = noone;

sprite_index = noone;

if first_beam {
	sprite_index = spr_first_laser_beam
	if !player.p1 {
		image_angle = 180
	}
}