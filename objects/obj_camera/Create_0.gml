/// @description this is the camera that scrolls up and down
//it is bounded by converted camps



cam = view_camera[0];

view_width_half = camera_get_view_width(cam) * 0.5;

view_height_half = camera_get_view_height(cam) * 0.5;

scroll_boundry = 32;

//were are we going?
xTo = xstart;
yTo = ystart;


