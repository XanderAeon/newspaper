{
	draw_self()
	draw_set_color(c_black)
	draw_text(x,y,value)
	draw_sprite_part(Sky_Small, 0, ((value - 1) mod 4) * sprite_get_width(tile_spr), floor((value - 1)/4) * sprite_get_height(tile_spr), sprite_get_width(tile_spr), sprite_get_height(tile_spr), x, y)
	
	draw_set_colour($FF000000 & $ffffff);
	var l652FB659_0=($FF000000 >> 24);
	draw_set_alpha(l652FB659_0 / $ff);

	draw_rectangle(x + 1, y + 1, x - 2 + sprite_width, y - 2 + sprite_height, 1);
}