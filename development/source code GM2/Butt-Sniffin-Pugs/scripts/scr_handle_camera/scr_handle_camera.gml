
camera = view_camera[0];

if camera_mode = 0{
if keyboard_check_pressed(vk_numpad0){camera_mode = 1;}
if instance_exists(obj_player){

camera_x = lerp(camera_x,obj_player.x-320,.1);
camera_y = lerp(camera_y,obj_player.y-180,.1);


camera_set_view_size(view_camera[0],640,360);
camera_set_view_pos(view_camera[0],camera_x,camera_y);



}}
else
if camera_mode = 1{
if keyboard_check_pressed(vk_numpad0){camera_mode = 0;}
camera_set_view_size(view_camera[0],room_width,room_height);
camera_set_view_pos(view_camera[0],0,0);}