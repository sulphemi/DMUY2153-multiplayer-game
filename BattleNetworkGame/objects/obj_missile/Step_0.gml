if point_distance(x, y, x_dest, y) < 2 {
	explode = true
} else if !explode {
	x = lerp(x, x_dest, 0.1)
}

if explode && !destroy {
	for (var _i = box_x - 1; _i < box_x + 2; _i++) {
		var _pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
		instance_create_depth(_pos.x, _pos.y, 4, obj_missile_explosion, {
			player: player,
			box_x: _i,
			box_y: box_y
		});
		if box_y > 0 {
			var _pos_offset = ds_grid_get(obj_grid_manager.grid, _i, box_y - 1)
			instance_create_depth(_pos.x, _pos_offset.y, 4, obj_missile_explosion, {
				player: player,
				box_x: _i,
				box_y: box_y - 1
			});
		}
		if box_y < 3 {
			var _pos_offset = ds_grid_get(obj_grid_manager.grid, _i, box_y + 1)
			instance_create_depth(_pos.x, _pos_offset.y, 4, obj_missile_explosion, {
				player: player,
				box_x: _i,
				box_y: box_y + 1
			});
		}
	}
	destroy = true
}

if destroy {
	instance_destroy()
}