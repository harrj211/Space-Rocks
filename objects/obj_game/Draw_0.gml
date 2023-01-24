var game_instructions =
@"Score 1000 points to win!

W: move
A/D: change direction
S: slow down
SPACE: shoot
Ctrl: switch weapons

>> PRESS ENTER TO START <<
"

switch(room)
{
	case rm_game:
		draw_text(20, 20, string("SCORE: " + string(score)));
		draw_text(20, 40, string("LIVES: " + string(lives)));
		break;
		
//Start
	case rm_start:
		draw_set_halign(fa_center);
		var c = c_purple;
		var a = c_gray;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS",
			3, 3, 0, c,c,a,a, 1
		);
		
		draw_text(room_width/2, 200, string(game_instructions));
		
		draw_set_halign(fa_left);
		break;
		
//Win
	case rm_win:
		draw_set_halign(fa_center);
		var c = c_fuchsia;
		var a = c_gray;
		draw_text_transformed_color(
			room_width/2, 100, "YOU WON!",
			3, 3, 0, c,c,a,a, 1
		);
		
		draw_text(room_width/2, 300, string("PRESS ENTER TO RESTART"));
		
		draw_set_halign(fa_left);
		break;
		
//Lose
	case rm_lose:
		draw_set_halign(fa_center);
		var c = c_blue;
		var a = c_gray;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER",
			3, 3, 0, c,c,a,a, 1
		);
		
		draw_text(room_width/2, 250, string("FINAL SCORE:"+string(score)));
		
		draw_text(room_width/2, 300, string("PRESS ENTER TO RESTART"));
		
		draw_set_halign(fa_left);
		break;
}
