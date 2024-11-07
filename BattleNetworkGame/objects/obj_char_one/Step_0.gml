event_inherited()

if p1 {
	bullet(vk_space)
	charge(vk_space)
}
else if !p1 {
	bullet(vk_rshift)
	charge(vk_rshift)
}

if mana < max_mana && mana_regen_delay < 0{
	mana += mana_regen
	mana_regen_delay = mana_regen_rate
}
if mana > max_mana {
	mana = max_mana
}

fire_delay -= 1
mana_regen_delay -= 1