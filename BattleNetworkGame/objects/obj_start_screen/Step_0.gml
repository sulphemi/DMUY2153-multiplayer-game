if (keyboard_check(vk_space)) {
    player1_ready = true;
} else {
    player1_ready = false;
}

if (keyboard_check(vk_rshift)) {
    player2_ready = true;
} else {
    player2_ready = false;
}


if (player1_ready && player2_ready) {
   
    room_goto_next();
}
