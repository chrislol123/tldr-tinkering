var cam = view_camera[0];
var cx = camera_get_view_x(cam)*4;
var cy = camera_get_view_y(cam)*4;
var cw = camera_get_view_width(cam)*4;
var ch = camera_get_view_height(cam)*4;

draw_set_alpha(0.2);
draw_set_color(make_color_rgb(80, 80, 155));
draw_rectangle(cx, cy, cx+cw, cy+ch, false);

draw_set_alpha(1);
draw_set_color(c_white);