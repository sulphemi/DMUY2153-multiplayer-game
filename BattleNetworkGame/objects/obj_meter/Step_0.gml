if (player == noone) {
	exit;	
}

if(player.p1){
	x = room_width/2 -400;
	y = 200;
}else{
	x = room_width/2 + 400;
	y = 200;
}


if (player.charge_timer <= 0) {
	t1_width = 0;
	t2_width = 0;
	t3_width = 0;
} else {
	outerbar_width = lerp(outerbar_width, BAR_MAXWIDTH, 0.3);

	if (player.charge_timer < 30) {
		t1_width = player.charge_timer % 30 * BAR_MAXWIDTH / 30;
		exit;
	} else {
		t1_width = BAR_MAXWIDTH;
	}
	
	if (player.charge_timer < 60) {
		t2_width = player.charge_timer % 30 * BAR_MAXWIDTH / 30;
		exit;
	} else {
		t2_width = BAR_MAXWIDTH;
	}
	
	if (player.charge_timer < 90) {
		t3_width = player.charge_timer % 30 * BAR_MAXWIDTH / 30;
		exit;
	} else {
		t3_width = BAR_MAXWIDTH;
	}
}