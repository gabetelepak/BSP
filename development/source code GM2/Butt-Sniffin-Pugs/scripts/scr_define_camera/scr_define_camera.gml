
//window_set_size(480*2,270*2);




view_width = 480*1;
view_height = 270*1;


view_camera[0] = camera_create_view(0,0,view_width,view_height,0,-1,-1,-1,0,0);
camera = view_camera[0];
//camera_set_view_pos(view_camera[0],0,0);
//camera_set_view_size(view_camera[0],view_width,view_height);
view_set_camera(0, view_camera[0]);


camera_mode = 0;

surf_camera = 0;
camera_x = 0;
camera_y = 0;
camera_width = 0;
camera_height = 0;


flash_surfaces = 90;
activate_alarm = 0;//how often to check to deavtivate instances outside the view.


