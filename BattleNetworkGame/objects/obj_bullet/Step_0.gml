event_inherited()

if player.p1 {
	x += 15
}
else if !player.p1 {
	x -= 15
}
hitbox.x = x

if hitbox.destroy {
	instance_destroy(hitbox)
	instance_destroy()
}