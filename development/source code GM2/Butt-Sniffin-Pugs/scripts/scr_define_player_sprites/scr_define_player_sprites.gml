
scr_define_color_change();
scr_set_color_change_brown();


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
walk_left_sprite[5] = spr_walk_left_fur;
walk_left_sprite[6] = spr_walk_left_tail;
walk_sprite = scr_assemble_player_sprite(walk_left_sprite);

walk_up_sprite[0] = spr_walk_up_legs;
walk_up_sprite[1] = spr_walk_up_body;
walk_up_sprite[2] = spr_walk_up_head;
walk_up_sprite[3] = spr_walk_up_chin;
walk_up_sprite[4] = spr_walk_up_arms;
walk_up_sprite[5] = spr_walk_up_fur;
walk_up_sprite[6] = spr_walk_up_tail;
walk_up_sprite = scr_assemble_player_sprite(walk_up_sprite);

walk_down_sprite[0] = spr_walk_down_legs;
walk_down_sprite[1] = spr_walk_down_body;
walk_down_sprite[2] = spr_walk_down_head;
walk_down_sprite[3] = spr_walk_down_chin;
walk_down_sprite[4] = spr_walk_down_arms;
walk_down_sprite[5] = spr_walk_down_fur;
walk_down_sprite[6] = spr_blank;
walk_down_sprite = scr_assemble_player_sprite(walk_down_sprite);

//jump left
assemble_sprite[0] = spr_jump_left_body;//body
assemble_sprite[1] = spr_jump_left_legs;//legs
assemble_sprite[2] = spr_jump_left_head;//heads
assemble_sprite[3] = spr_jump_left_chin;//chin
assemble_sprite[4] = spr_jump_left_arms;//arms
assemble_sprite[5] = spr_jump_left_fur;//fur
assemble_sprite[6] = spr_jump_left_tail;//tail
jump_left_sprite = scr_assemble_player_sprite(assemble_sprite);
jump_left_sprite_reverse = scr_reverse_sprite(jump_left_sprite);

//jump up
assemble_sprite[0] = spr_jump_up_body;//body
assemble_sprite[1] = spr_jump_up_legs;//legs
assemble_sprite[2] = spr_jump_up_head;//heads
assemble_sprite[3] = spr_jump_up_chin;//chin
assemble_sprite[4] = spr_jump_up_arms;//arms
assemble_sprite[5] = spr_jump_up_fur;//fur
assemble_sprite[6] = spr_jump_up_tail;//tail
jump_up_sprite = scr_assemble_player_sprite(assemble_sprite);
jump_up_sprite_reverse = scr_reverse_sprite(jump_up_sprite);

//jump down
assemble_sprite[0] = spr_jump_down_body;//body
assemble_sprite[1] = spr_jump_down_legs;//legs
assemble_sprite[2] = spr_jump_down_head;//heads
assemble_sprite[3] = spr_jump_down_chin;//chin
assemble_sprite[4] = spr_jump_down_arms;//arms
assemble_sprite[5] = spr_jump_down_fur;//fur
assemble_sprite[6] = spr_jump_down_tail;//tail
jump_down_sprite = scr_assemble_player_sprite(assemble_sprite);
jump_down_sprite_reverse = scr_reverse_sprite(jump_down_sprite);


//poop left
assemble_sprite[0] = spr_poop_left_body;//body
assemble_sprite[1] = spr_poop_left_legs;//legs
assemble_sprite[2] = spr_blank;//heads
assemble_sprite[3] = spr_poop_left_chin;//chin
assemble_sprite[4] = spr_blank;//arms
assemble_sprite[5] = spr_poop_left_fur;//fur
assemble_sprite[6] = spr_poop_left_tail;//tail
poop_left_sprite = scr_assemble_player_sprite(assemble_sprite);
poop_left_sprite = scr_add_onto_sprite(jump_left_sprite,poop_left_sprite);
poop_left_sprite = scr_add_onto_sprite(poop_left_sprite,jump_left_sprite_reverse);

//poop up
assemble_sprite[0] = spr_poop_up_body;//body
assemble_sprite[1] = spr_poop_up_legs;//legs
assemble_sprite[2] = spr_blank;//heads
assemble_sprite[3] = spr_poop_up_chin;//chin
assemble_sprite[4] = spr_blank;//arms
assemble_sprite[5] = spr_poop_up_fur;//fur
assemble_sprite[6] = spr_poop_up_tail;//tail
poop_up_sprite = scr_assemble_player_sprite(assemble_sprite);
poop_up_sprite = scr_add_onto_sprite(jump_up_sprite,poop_up_sprite);
poop_up_sprite = scr_add_onto_sprite(poop_up_sprite,jump_up_sprite_reverse);

//poop down
assemble_sprite[0] = spr_poop_down_body;//body
assemble_sprite[1] = spr_poop_down_legs;//legs
assemble_sprite[2] = spr_blank;//heads
assemble_sprite[3] = spr_poop_down_chin;//chin
assemble_sprite[4] = spr_blank;//arms
assemble_sprite[5] = spr_poop_down_fur;//fur
assemble_sprite[6] = spr_poop_down_tail;//tail
poop_down_sprite = scr_assemble_player_sprite(assemble_sprite);
poop_down_sprite = scr_add_onto_sprite(jump_down_sprite,poop_down_sprite);
poop_down_sprite = scr_add_onto_sprite(poop_down_sprite,jump_down_sprite_reverse);


//dig left
assemble_sprite[0] = spr_dig_left_body;//body
assemble_sprite[1] = spr_dig_left_legs;//legs
assemble_sprite[2] = spr_dig_left_head;//heads
assemble_sprite[3] = spr_dig_left_chin;//chin
assemble_sprite[4] = spr_dig_left_arms;//arms
assemble_sprite[5] = spr_dig_left_fur;//fur
assemble_sprite[6] = spr_dig_left_tail;//tail
dig_left_sprite = scr_assemble_player_sprite(assemble_sprite);
dig_left_sprite = scr_add_onto_sprite(jump_left_sprite,dig_left_sprite);
dig_left_sprite = scr_add_onto_sprite(dig_left_sprite,jump_left_sprite_reverse);

//dig up
assemble_sprite[0] = spr_dig_up_body;//body
assemble_sprite[1] = spr_dig_up_legs;//legs
assemble_sprite[2] = spr_dig_up_head;//heads
assemble_sprite[3] = spr_dig_up_chin;//chin
assemble_sprite[4] = spr_blank;//arms
assemble_sprite[5] = spr_dig_up_fur;//fur
assemble_sprite[6] = spr_dig_up_tail;//tail
dig_up_sprite = scr_assemble_player_sprite(assemble_sprite);
dig_up_sprite = scr_add_onto_sprite(jump_up_sprite,dig_up_sprite);
dig_up_sprite = scr_add_onto_sprite(dig_up_sprite,jump_up_sprite_reverse);

//poop down
assemble_sprite[0] = spr_dig_down_body;//body
assemble_sprite[1] = spr_dig_down_legs;//legs
assemble_sprite[2] = spr_dig_down_head;//heads
assemble_sprite[3] = spr_dig_down_chin;//chin
assemble_sprite[4] = spr_blank;//arms
assemble_sprite[5] = spr_dig_down_fur;//fur
assemble_sprite[6] = spr_dig_down_tail;//tail
dig_down_sprite = scr_assemble_player_sprite(assemble_sprite);
dig_down_sprite = scr_add_onto_sprite(jump_down_sprite,dig_down_sprite);
dig_down_sprite = scr_add_onto_sprite(dig_down_sprite,jump_down_sprite_reverse);
















