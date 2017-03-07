
if instance_exists(obj_player){
shader_set(shd_only_gray);
draw_surface(g.surf_player_silhouette,obj_player.x-24,obj_player.y-48);
shader_reset();}