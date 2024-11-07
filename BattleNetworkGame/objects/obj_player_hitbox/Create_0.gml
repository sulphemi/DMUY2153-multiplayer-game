max_life = life
invul_timer = 0
hit = false

image_alpha = 0.35

function damaged_by_player(_inst){
	player.life -= _inst.damage
	_inst.destroy = true
	got_damaged()
}

function got_damaged(){
	hit = true
	invul_timer = 30
	player.image_alpha = 0.5
}