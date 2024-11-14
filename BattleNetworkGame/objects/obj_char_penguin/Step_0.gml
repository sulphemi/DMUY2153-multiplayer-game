if (life <= 0) {
	if (am_i_dead) {
		exit;	
	} else {
		am_i_dead = true;
		instance_create_depth(x, y, -999, obj_deathexplosion);
		image_alpha = 0.0;
		sprite_index = spr_none;
		instance_destroy(alive_marker);
		exit;
	}
}

event_inherited()
if !obj_game_manager.game_over {
	if p1 {
		bullet(vk_space, 15, -35)
		charge(vk_space)
	}
	else if !p1 {
		bullet(vk_rshift, -15, -35)
		charge(vk_rshift)
	}

	if mana < max_mana && mana_regen_delay < 0{
		mana += mana_regen
		mana_regen_delay = mana_regen_rate
	}
	if mana > max_mana {
		mana = max_mana
	}

	fire_delay -= 1
	mana_regen_delay -= 1
}




