view_camera[0] = camera_create();
camera = view_camera[0];
camera_set_view_pos(camera,0,0);
camera_set_view_size(camera,640,360);

view_set_camera(0, camera);