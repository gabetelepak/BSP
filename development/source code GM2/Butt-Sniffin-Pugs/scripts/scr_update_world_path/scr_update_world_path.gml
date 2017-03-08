
world_grid = mp_grid_create(0,0,floor(room_width/24),floor(room_height/24),24,24);




with obj_path_point{

if path_section_start < 0{
path_section_start = 1;
opt = scr_nearest_path_point();
opt.path_section_start = 2;
mp_grid_path(g.world_grid,path,x,y,opt.x,opt.y,1);
}




}///////