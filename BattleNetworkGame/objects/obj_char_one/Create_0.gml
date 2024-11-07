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

if p1 {
	hitbox = instance_create_depth(x, y, 5, obj_player_hitbox, 
	{
		player: id
	});
}
else if !p1 {
	hitbox = instance_create_depth(x, y, 5, obj_player_hitbox, 
	{
		player: id,
		p1 : false
	});
}

function bullet(_key){
	if keyboard_check_pressed(_key) && fire_delay < 0 {
		if p1 {
			var _bullet = instance_create_depth(x + 15, y - 35, 1, obj_bullet,
			{
				box_x: box_x,
				box_y: box_y
			})
		}
		else if !p1 {
			var _bullet = instance_create_depth(x - 15, y - 35, 1, obj_bullet,
			{
				p1 : false,
				box_x: box_x,
				box_y: box_y
			})
		}
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
		charge_timer = 0
	}
}

function laser(){
	var _laser_pos = ds_grid_get(obj_grid_manager.grid, box_x, box_y)
	if p1 {
		instance_create_depth(_laser_pos.x, _laser_pos.y - 35, 2, obj_initial_laser_beam, {
			box_x: box_x,
			box_y: box_y
		});
	} else if !p1 {
		instance_create_depth(_laser_pos.x, _laser_pos.y - 35, 2, obj_initial_laser_beam, {
			p1: false,
			box_x: box_x,
			box_y: box_y,
			image_angle: 180
		});
	}
}

function flamethrower(_key){
}