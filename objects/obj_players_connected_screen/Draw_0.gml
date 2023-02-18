/// @description 

var _i = 0;
var _screen_width = screen_width_get();
var _screen_height = screen_height_get();
var _view_x1 = view_x1_get();
var _view_y1 = view_y1_get();
var _view_width = view_width_get();
var _view_height = view_height_get();
var _x = _view_x1 + (_screen_width / 2);
var _y = _view_y1 + (_screen_height / 2);
var _dialog_width, _dialog_height;
var _animate = lerp(animation_previous, animation, frame_delta_game_get());
var _text;
var _font_size;

draw_set_projection_2D(_view_x1, _view_y1, _screen_width, _screen_height);
draw_set_color(c_white);
draw_set_alpha(0.5);
draw_rectangle(_view_x1, _view_y1, _view_x1 + _screen_width, _view_y1 + _screen_width, false);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(global.font_12);
_font_size = font_get_size(global.font_12) + 4;

if (_animate > 0)
{
	_dialog_width = (string_width_ext("Player " + string(INPUT_MAX_PLAYERS), -1, 320) + 32) * _animate;
	_dialog_height = ((_font_size * INPUT_MAX_PLAYERS) + 32) * _animate;
	draw_sprite_stretched(spr_menu, 0, _x - (_dialog_width / 2), _y - (_dialog_height / 2), _dialog_width, _dialog_height);
}

if (_animate == 1)
{
	for (_i = 0; _i < INPUT_MAX_PLAYERS; ++_i)
	{
		if (input_player_connected(_i))
			draw_set_color(c_white);
		else
			draw_set_color(c_black);
		
		_text = "Player " + string(_i + 1);
		draw_text(_x, _y + (_font_size * _i) - ((INPUT_MAX_PLAYERS - 1) * _font_size) / 2, _text);
	}
	
	draw_set_color(c_white);
	draw_set_valign(fa_bottom);
	draw_text(_x, _y - (_dialog_height / 2), "Active Players");
	if (!is_undefined(global.player_lead))
	{
		draw_set_valign(fa_top);
		draw_text(_x, _y + (_dialog_height / 2), "Player " + string(global.player_lead + 1) + "\nClose when ready!");
	}
}

draw_set_projection_2D(_view_x1, _view_y1, _view_width, _view_height);