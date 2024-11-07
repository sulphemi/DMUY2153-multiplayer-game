lifetime = 30

if first_beam {
	sprite_index = spr_first_laser_beam
	if !player.p1 {
		image_angle = 180
	}
}
else {
	pos = ds_grid_get(obj_grid_manager.grid, box_x, box_y)

	hitbox = instance_create_depth(pos.x, pos.y, 4, obj_player_attack_hitbox, {
		player: player,
		damage: 20,
		mana_restore: 90
	});
}