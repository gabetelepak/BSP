

if !surface_exists(g.surf_camera){
g.surf_camera = surface_create(480,270);
}


camera = view_camera[0];

if camera_mode = 0{
if keyboard_check_pressed(ord("0")){camera_mode = 1;}
if instance_exists(obj_player){

camera_x = lerp(camera_x,obj_player.x-240,.1);
camera_y = lerp(camera_y,obj_player.y-135,.1);


camera_set_view_size(view_camera[0],480,270);
camera_set_view_pos(view_camera[0],camera_x,camera_y);



}}
else
if camera_mode = 1{
if keyboard_check_pressed(ord("0")){camera_mode = 0;}
camera_set_view_size(view_camera[0],room_width,room_height);
camera_set_view_pos(view_camera[0],0,0);}



if keyboard_check_pressed(ord("2")){window_set_fullscreen(1);}


camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]); 