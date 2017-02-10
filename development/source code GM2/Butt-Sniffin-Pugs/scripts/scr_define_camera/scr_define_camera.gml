
window_set_size(1280,720);

view_camera[0] = camera_create();
camera = view_camera[0];
camera_set_view_pos(view_camera[0],0,0);
camera_set_view_size(view_camera[0],640,360);
view_set_camera(0, view_camera[0]);


camera_mode = 0;


camera_x = 0;
camera_y = 0;