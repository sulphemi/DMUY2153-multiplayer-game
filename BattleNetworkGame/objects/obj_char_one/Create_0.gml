event_inherited()

char_spd = 0.5
max_life = 1000
life = max_life

max_mana = 300
mana = max_mana
mana_regen = 1
mana_regen_rate = 18
mana_regen_delay = mana_regen_rate

fire_rate = 30
fire_delay = 0

charge_timer = 0

hitbox = instance_create_depth(x, y, 5, obj_player_hitbox, {
	player: id
});

function bullet(_key, _x_offset, _y_offset){
	if keyboard_check_pressed(_key) && fire_delay < 0 {
		var _bullet = instance_create_depth(x + 15, y - 35, 1, obj_bullet,
		{
			player: id,
			box_x: box_x,
			box_y: box_y
		});
		fire_delay = fire_rate
	}
}

function charge(_key){
	if keyboard_check(_key) {
		charge_timer += 1
	} else {
		if charge_timer > 90 && mana > 90 {
			laser()
			mana -= 90
		}
		else if charge_timer > 60 && mana > 60 {
			flamethrower()
		}
		charge_timer = 0
	}
}

function laser(){
	if p1 {
		for (var _i = box_x; _i < ds_grid_width(obj_grid_manager.grid); _i++) { 
			create_laser_beam(_i)
		}
	} else if !p1 {
		for (var _i = box_x; _i >= 0; _i--) { 
			create_laser_beam(_i)
		}
	}
}

function create_laser_beam(_i){
	var _pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
	if _i == box_x {
		var _laser = instance_create_depth(_pos.x, _pos.y - 35, 2, obj_laser_beam, {
			player: id,
			box_x: _i,
			box_y: box_y,
			first_beam: true
		});
	} else {
		var _laser = instance_create_depth(_pos.x, _pos.y - 35, 2, obj_laser_beam, {
			player: id,
			box_x: _i,
			box_y: box_y,
		});
	}
}

/*
function flamethrower(){
	for (var _i = box_x; _i < box_x + 2; _i++){
		if 1 {
		}
	}
}*/

/*
function missile(){
}
*/