/// @description Insert description here
// You can write your code in this editor

var x2 = camera_get_view_width(view_camera[0]) * 2;
var y2 = camera_get_view_height(view_camera[0]) * 2;
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(-50, -50, x2, y2, false);


draw_set_alpha(1);
draw_set_color(c_white);