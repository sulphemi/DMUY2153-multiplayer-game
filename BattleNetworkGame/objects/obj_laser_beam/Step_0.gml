if lifetime <= 0 {
	instance_destroy(hitbox)
	instance_destroy()
}
lifetime -= 1