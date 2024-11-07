lifetime = 30
damage = 20

if p1 {
	for (var _i = box_x + 1; _i < ds_grid_width(obj_grid_manager.grid); _i++) { 
		var _laser_pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
		var _laser = instance_create_depth(_laser_pos.x, _laser_pos.y - 35, 2, obj_laser_beam, {
			box_x: _i,
			box_y: box_y
		});
	}
} else if !p1 {
	for (var _i = box_x - 1; _i >= 0; _i--) { 
		var _laser_pos = ds_grid_get(obj_grid_manager.grid, _i, box_y)
		var _laser = instance_create_depth(_laser_pos.x, _laser_pos.y - 35, 2, obj_laser_beam, {
			p1: false,
			box_x: _i,
			box_y: box_y,
		});
	}
}