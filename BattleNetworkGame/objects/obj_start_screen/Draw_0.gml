
draw_text(room_width / 2 - string_width(title) / 2, room_height / 4, title);

var controls_text = "Controls:\n" +
    "Player 1 - Move: WASD, Shoot: Spacebar\n" +
    "Player 2 - Move: Arrow Keys, Shoot: Right Shift\n" +
    "Hold the shoot button for charged attacks.\n" +
    "Manage your mana bar for special abilities.";

draw_text(room_width / 2 - string_width(controls_text) / 2, room_height / 2, controls_text);


var player1_status = player1_ready ? "READY" : "NOT READY";
var player2_status = player2_ready ? "READY" : "NOT READY";

draw_text(room_width / 4, room_height * 3 / 4, "Player 1: " + player1_status);
draw_text(room_width * 3 / 4, room_height * 3 / 4, "Player 2: " + player2_status);
