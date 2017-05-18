
i = 1;
repeat(2){
if instance_exists(player_object[i]){
shader_set(shd_only_gray);
draw_surface(g.surf_player_silhouette[i],player_object[i].x-24,player_object[i].y-48);
shader_reset();}
i+=1;}