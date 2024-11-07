draw_set_font(fnt_life)
draw_set_halign(fa_center)

draw_text(x, y + 15, life)

if p1 {
	draw_text(room_width/2 - 300, 650, mana)
	draw_text(room_width/2 - 400, 650, charge_timer)
}
else if !p1 {
	draw_text(room_width/2 + 300, 650, mana)
	draw_text(room_width/2 + 400, 650, charge_timer)
}