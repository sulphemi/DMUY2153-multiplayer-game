image_alpha = 0.6
lifetime = 20

pos = ds_grid_get(obj_grid_manager.grid, box_x, box_y)
hitbox = instance_create_depth(pos.x, pos.y, 4, obj_player_attack_hitbox, {
	player: player,
	damage: 15,
	mana_restore: 20
});