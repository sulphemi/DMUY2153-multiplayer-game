if first_beam && lifetime <= 0 {
	instance_destroy()
} else if lifetime <= 0 {
	instance_destroy(hitbox)
	instance_destroy()
}
lifetime -= 1

