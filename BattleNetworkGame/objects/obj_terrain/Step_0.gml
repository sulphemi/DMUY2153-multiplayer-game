if place_meeting(x, y, obj_player_hitbox){
	occupied = true
}
else {
	occupied = false
}

if fire {
	sprite_index = spr_terrain_fire
	image_alpha = 0.5
	fire_time -= 1
	if fire_time < 0 {
		fire = false
		fire_damage = 2
	}
}
else if poison{
}
else {
	sprite_index = spr_terrain_normal
	image_alpha = 0.15
}