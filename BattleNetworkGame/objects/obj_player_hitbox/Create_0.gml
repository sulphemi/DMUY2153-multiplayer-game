invul_timer = 0
fire_damage_cooldown = 30
fire_damage_delay = 0
hit = false

image_alpha = 0.35

function damaged_by_player(_inst){
	player.life -= _inst.damage
	if _inst.player.mana + _inst.mana_restore > 100 {
		_inst.player.mana = 100
	}
	else {
		_inst.player.mana += _inst.mana_restore
	}
	_inst.destroy = true
	got_damaged()
}

function got_damaged(){
	hit = true
	invul_timer = 30
	player.image_alpha = 0.5
}