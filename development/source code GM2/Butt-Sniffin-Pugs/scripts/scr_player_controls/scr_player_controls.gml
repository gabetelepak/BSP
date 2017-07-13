
//abilities.
if face_direction = "right" || face_direction = "left"{
abi_left_sprite = abi_left_sprite_left;
abi_right_sprite = abi_right_sprite_left;}

if face_direction = "up"{
abi_left_sprite = abi_left_sprite_up;
abi_right_sprite = abi_right_sprite_up;}

if face_direction = "down"{
abi_left_sprite = abi_left_sprite_down;
abi_right_sprite = abi_right_sprite_down;}


//left ability
if action <= 0 && g.inventory_open = 0{
if g.button_pressed[player_num,g.button_X]{
sprite_index = abi_left_sprite;
image_speed = .25;
image_index = 0;
action = sprite_get_number(sprite_index)/image_speed;
action_performed = 0;
abi_action = abi_left;
}

if g.button_pressed[player_num,g.button_B]{
sprite_index = abi_right_sprite;
image_speed = .25;
image_index = 0;
action = sprite_get_number(sprite_index)/image_speed;
action_performed = 0;
abi_action = abi_right;
}
}

if action <= 0{abi_action = "";}

//run ability scripts every action step once activated. 
if action > 0 && abi_action != ""{
if abi_action = abi_left{
script_execute(abi_left_script);}
if abi_action = abi_right{
script_execute(abi_right_script);}}














