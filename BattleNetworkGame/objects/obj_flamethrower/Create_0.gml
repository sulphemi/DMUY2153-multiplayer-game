lifetime = 20

pos = ds_grid_get(obj_grid_manager.grid, box_x, box_y)
hitbox = instance_create_depth(pos.x, pos.y, 4, obj_player_attack_hitbox, {
	player: player,
	damage: 30,
	mana_restore: 30
});

pos.fire_time = 600
pos.fire = true
pos.fire_damage = 2