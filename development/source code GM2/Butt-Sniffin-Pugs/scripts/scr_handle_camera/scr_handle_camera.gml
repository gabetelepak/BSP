

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



if keyboard_check_pressed(ord("2")){
if !window_get_fullscreen(){window_set_fullscreen(1);}else{window_set_fullscreen(0);}
flash_surfaces = 60;}


camera_width = camera_get_view_width(view_camera[0]);
camera_height = camera_get_view_height(view_camera[0]); 

camera_x = clamp(camera_x,0,room_width-camera_width);
camera_y = clamp(camera_y,0,room_height-camera_height);




//flash surfaces

if flash_surfaces > 0{flash_surfaces -=1;}
if flash_surfaces = 1{surface_free(world_grid_surf );
surface_free(world_grid_surf );
surface_free(g.surf_shadow);}




//activate scenery objects
if activate_alarm <= 0{
instance_activate_region(camera_x-240,camera_y-240,camera_width+480,camera_height+480,1);
activate_alarm = 30;}else{activate_alarm -= 1;}











