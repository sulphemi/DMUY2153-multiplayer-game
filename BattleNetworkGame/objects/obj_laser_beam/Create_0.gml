lifetime = 20

if !player.p1 {
	image_xscale = -1
}

if (first_beam) {
    sprite_index = spr_first_laser_beam;
} else {
    sprite_index = spr_beam;
	
	if player.p1 {
		x -= 100; 
	} else if !player.p1 {
		x += 100
	}
    pos = ds_grid_get(obj_grid_manager.grid, box_x, box_y);

    hitbox = instance_create_depth(pos.x, pos.y, 4, obj_player_attack_hitbox, {
        player: player,
        damage: 90,
        mana_restore: 30
    });
}