/// @description Draw Background
var _view_x1 = view_x1_get();
var _view_y1 = view_y1_get();

draw_sprite_tiled(spr_background_fruit_sky, alternate, (_view_x1 / 1.25) - _view_x1, (_view_y1 / 1.25) - _view_y1);
draw_sprite_tiled(spr_background_fruit_juiceboxes, alternate, (_view_x1 / 1.5) - _view_x1, (_view_y1 / 1.5) - _view_y1);