
if !obj_game_manager.game_over {
	if place_meeting(x, y, obj_player_attack_hitbox) {
		var _inst = instance_place(x, y, obj_player_attack_hitbox)
		if player.p1 && !_inst.player.p1 && !hit {
			damaged_by_player(_inst)
		}
		else if !player.p1 && _inst.player.p1 && !hit {
			damaged_by_player(_inst)
		}
	}

	if place_meeting(x, y, obj_terrain) {
		var _inst = instance_place(x, y, obj_terrain)
		if _inst.fire {
			if fire_damage_delay < 0 {
				player.life -= _inst.fire_damage
				fire_damage_delay = fire_damage_cooldown
			} else {
				fire_damage_delay -= 1
			}
		} else {
			fire_damage_delay = 0
		}
	}
}

if hit && invul_timer > 0 {
	invul_timer -= 1
	if invul_timer <= 0 {
		player.image_alpha = 1
		hit = false
		invul_timer = 0
	}
}