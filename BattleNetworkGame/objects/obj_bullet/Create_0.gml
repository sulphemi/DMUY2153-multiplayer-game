hitbox = instance_create_depth(ds_grid_get(obj_grid_manager.grid, box_x, box_y).x,
			ds_grid_get(obj_grid_manager.grid, box_x, box_y).y, 4, obj_player_attack_hitbox,
			{
				sprite_index: spr_bullet_hitbox,
				player: player,
				damage: 10,
				mana_restore: 10
			});