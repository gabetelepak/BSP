

if !surface_exists(g.surf_player_silhouette){
g.surf_player_silhouette = surface_create(48,48);
}


if surface_exists(g.surf_player_silhouette){
surface_set_target(g.surf_player_silhouette);
draw_clear_alpha(c_black,1);
surface_reset_target();}


