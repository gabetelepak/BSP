

stand_sprite = g.spr_stand[player_num];
walk_sprite = g.spr_walk[player_num];
walk_up_sprite = g.spr_walk_up[player_num];
walk_down_sprite = g.spr_walk_down[player_num];
shadow_sprite = spr_sammy_shadow;


bark_sprite = g.spr_bark[player_num];
bite_sprite = g.spr_bite[player_num];

abi_left_sprite = bark_sprite;
abi_right_sprite = bite_sprite;


//sprite parts
walk_left_sprite[0] = spr_walk_left_body;
walk_left_sprite[1] = spr_walk_left_legs;
walk_left_sprite[2] = spr_walk_left_head;
walk_left_sprite[3] = spr_walk_left_chin;
walk_left_sprite[4] = spr_walk_left_arms;

walk_up_sprite[0] = spr_walk_up_legs;
walk_up_sprite[1] = spr_walk_up_body;
walk_up_sprite[2] = spr_walk_up_head;
walk_up_sprite[3] = spr_walk_up_chin;
walk_up_sprite[4] = spr_walk_up_arms;

walk_down_sprite[0] = spr_walk_down_body;
walk_down_sprite[1] = spr_walk_down_legs;
walk_down_sprite[2] = spr_walk_down_head;
walk_down_sprite[3] = spr_walk_down_chin;
walk_down_sprite[4] = spr_walk_down_arms;


walk_sprite = scr_assemble_player_sprite(walk_left_sprite);
walk_up_sprite = scr_assemble_player_sprite(walk_up_sprite);
walk_down_sprite = scr_assemble_player_sprite(walk_down_sprite);



















