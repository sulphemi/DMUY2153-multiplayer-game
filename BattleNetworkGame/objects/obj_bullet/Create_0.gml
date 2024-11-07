event_inherited()
hitbox = 0

if p1 {
	hitbox = instance_create_depth(ds_grid_get(obj_grid_manager.grid, box_x, box_y).x,
			 ds_grid_get(obj_grid_manager.grid, box_x, box_y).y, 4, obj_proj_hitbox)
	hitbox.damage = 10
}
else if !p1 {
	hitbox = instance_create_depth(ds_grid_get(obj_grid_manager.grid, box_x, box_y).x,
			 ds_grid_get(obj_grid_manager.grid, box_x, box_y).y, 4, obj_proj_hitbox,
			 {
				 p1: false
			 });
	hitbox.damage = 10
}