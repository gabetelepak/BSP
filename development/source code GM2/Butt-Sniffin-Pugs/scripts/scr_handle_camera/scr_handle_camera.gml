

if !surface_exists(g.surf_camera){
g.surf_camera = surface_create(view_width,view_height);
}


camera = view_camera[0];

if keyboard_check_pressed(ord("0")){
if camera_mode = 0{camera_mode = 1;}else{camera_mode = 0;}}

if camera_mode = 0{
if instance_exists(obj_player){

if abs(camera_x-(obj_player.x-(view_width/2))) > 2{
camera_x = round(lerp(camera_x,obj_player.x-(view_width/2),.1));}


if abs(camera_y-obj_player.y-((view_height/2))) > 2{
camera_y = round(lerp(camera_y,obj_player.y-(view_height/2),.1));}


camera_set_view_size(view_camera[0],view_width,view_height);
camera_set_view_pos(view_camera[0],round(camera_x),round(camera_y));
}}

if camera_mode = 1{
camera_set_view_size(view_camera[0],room_width,room_height);
camera_set_view_pos(view_camera[0],0,0);}



if keyboard_check_pressed(ord("2")){window_set_fullscreen(1);}


camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]); 