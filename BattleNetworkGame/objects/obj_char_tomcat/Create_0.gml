event_inherited()

char_spd = 0.5
max_life = 300
life = max_life

max_mana = 100
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
		var _bullet = instance_create_depth(x, y - 35, 1, obj_bullet,
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
			mouse()
			mana -= 90
		} else if charge_timer > 60 && mana > 60 {
			fire_hydrant()
			mana -= 60
		} else if charge_timer > 30 && mana > 30 {
			missile()
			mana -= 30
		}
		charge_timer = 0
	}
}

function fire_hydrant(){
	if p1 {
		for (var _i = box_x; _i < ds_grid_width(obj_grid_manager.grid); _i++) { 
			create_fire_hydrant(_i)
		}
	} else if !p1 {
		for (var _i = box_x; _i >= 0; _i--) { 
			create_fire_hydrant(_i)
		}
	}
}

function create_fire_hydrant(_i){
	var _pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
	if _i == box_x {
		var _laser = instance_create_depth(_pos.x, _pos.y - 35, 2, obj_fire_hydrant, {
			player: id,
			box_x: _i,
			box_y: box_y,
			first_beam: true
		});
	} else {
		var _laser = instance_create_depth(_pos.x, _pos.y - 35, 2, obj_fire_hydrant, {
			player: id,
			box_x: _i,
			box_y: box_y,
		});
	}
}

function flamethrower(){
	if p1 {
		for (var _i = box_x + 1; _i < box_x + 3; _i++){
			var _pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
			create_flame(_pos, _i, box_y)
			if _i == box_x + 2 && box_y > 0 {
				var _pos_offset = ds_grid_get(obj_grid_manager.grid, _i, box_y - 1)
				create_flame(_pos_offset, _i, box_y - 1)
			}
			if _i == box_x + 2 && box_y < 3 {
				var _pos_offset = ds_grid_get(obj_grid_manager.grid, _i, box_y + 1)
				create_flame(_pos_offset, _i, box_y + 1)
			}
		}
	} else if !p1 {
		for (var _i = box_x - 1; _i > box_x - 3; _i--){
			var _pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
			create_flame(_pos, _i, box_y)
			if _i == box_x - 2 && box_y > 0 {
				var _pos_offset = ds_grid_get(obj_grid_manager.grid, _i, box_y - 1)
				create_flame(_pos_offset, _i, box_y - 1)
			}
			if _i == box_x - 2 && box_y < 3 {
				var _pos_offset = ds_grid_get(obj_grid_manager.grid, _i, box_y + 1)
				create_flame(_pos_offset, _i, box_y + 1)
			}
		}
	}
}

function create_flame(_pos, _box_x, _box_y){
	var _flame = instance_create_depth(_pos.x, _pos.y, 2, obj_flamethrower, {
		player: id,
		box_x: _box_x,
		box_y: _box_y
	});
}

function missile(){
	var _missile = instance_create_depth(x , y - 35, 1, obj_missile,
		{
			player: id,
			box_x: box_x,
			box_y: box_y
		});
}

function mouse(){
	if p1 {
		create_mouse(box_x + 1);
	} else if !p1 {
		create_mouse(box_x - 1);
	}
}

function create_mouse(_i){
	var _pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)

	var _mouse = instance_create_depth(_pos.x, _pos.y - 35, 2, obj_mouse, {
		player: id,
		box_x: _i,
		box_y: box_y,
	});
}