if place_meeting(x, y, obj_proj_hitbox) {
	var _inst = instance_place(x, y, obj_proj_hitbox)
	if p1 && !_inst.p1 && !hit {
		damaged_by_player(_inst)
	}
	else if !p1 && _inst.p1 &&!hit {
		damaged_by_player(_inst)
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