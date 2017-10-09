 /// @description Insert description here
// You can write your code in this editor
is_creature = 1;
is_item = 0;


nplayer = 0; //id of player nearest.
pnum = 0;//if nplayer is player 1 or 2
draw_direction = 0;
origin_offset_x = 0;
origin_offset_y = 0;
origin_x = 0;
origin_y = 0;
z = 0; 

player_num = 1;

name = "";
face = 1;
color = c_white;
alpha = 1;

shadow_sprite = spr_sammy_shadow;
shadow_x = 0;
shadow_y = 0;
face_direction = "right";
image_speed = 0;

//movement
hsp = 0;
vsp = 0;
spd = 0;


//sprites.
stand_sprite = spr_blank;
walk_sprite = spr_blank;
walk_up_sprite = spr_blank;
walk_down_sprite = spr_blank;
shadow_sprite = spr_blank;


//define interaciton
interaction = 0;
show_interaction = 0;
interaction_alpha = 0;
interaction_script = scr_int_dialogue;
dialogue_text = "Hello World!";

//actions
action = 0;
action_performed = 0;
abi_action = "";
