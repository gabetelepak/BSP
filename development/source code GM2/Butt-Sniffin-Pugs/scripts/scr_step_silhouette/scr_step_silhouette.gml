
i = 1;
repeat(2){
if !surface_exists(g.surf_player_silhouette[i]){
g.surf_player_silhouette[i] = surface_create(48,48);
}


if surface_exists(g.surf_player_silhouette[i]){
surface_set_target(g.surf_player_silhouette[i]);
draw_clear_alpha(c_black,1);
surface_reset_target();}
i+=1;}

