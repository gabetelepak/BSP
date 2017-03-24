
world_grid = mp_grid_create(24,24,floor(room_width/48),floor(room_height/48),48,48);
mp_grid_clear_all(g.world_grid);

//surface for drawing path
if !surface_exists(world_grid_surf){
world_grid_surf = surface_create(4320,3120);
buffer_get_surface(world_grid_buffer,world_grid_surf,0,0,0);}
//surface_resize(world_grid_surf,room_width,room_height);

surface_set_target(world_grid_surf);
draw_clear_alpha(c_white,0);
surface_reset_target();


//add module areas to grid
var i13 = 0;
repeat(max_modules){
mp_grid_add_rectangle(g.world_grid,module_x[i13],module_y[i13],module_x[i13]+module_size[i13],module_y[i13]+module_size[i13]);
i13+=1;}


//add park assets to grid
//mp_grid_add_instances(g.world_grid,obj_asset_parent,1);



with obj_path_point{
path_section_start = -1;}

with obj_path_point{

if path_section_start < 0{
path_section_start = 1;
opt = scr_nearest_path_point();
mp_grid_path(g.world_grid,path,sx,sy,opt.sx,opt.sy,1);
}}///////





