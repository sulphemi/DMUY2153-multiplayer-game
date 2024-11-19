lifetime = 20

if player.p1 {
} else if !player.p1 {
	image_xscale = -1
}

pos = ds_grid_get(obj_grid_manager.grid, box_x, box_y)
hitbox = instance_create_depth(pos.x, pos.y, 4, obj_player_attack_hitbox, {
	player: player,
	damage: 40,
	mana_restore: 40
});

pos.fire_time = 600
pos.fire = true
pos.fire_damage = 4