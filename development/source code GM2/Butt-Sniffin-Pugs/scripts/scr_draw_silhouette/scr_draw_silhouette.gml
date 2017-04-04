
if instance_exists(player_object[1]){

shader_set(shd_only_gray);
draw_surface(g.surf_player_silhouette,player_object[1].x-24,player_object[1].y-48);
shader_reset();}