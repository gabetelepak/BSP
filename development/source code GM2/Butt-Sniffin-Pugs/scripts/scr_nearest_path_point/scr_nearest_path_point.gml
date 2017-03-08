
g.itrigger = id;
g.idis = 99999;
g.ireturn = -1;
with obj_path_point{
if path_section_start < 0{
if id != g.itrigger && g.itrigger.module_id != module_id{
i = distance_to_point(g.itrigger.x,g.itrigger.y);
if i < g.idis{
g.ireturn = id;
g.idis = i;}}}}

return g.ireturn;