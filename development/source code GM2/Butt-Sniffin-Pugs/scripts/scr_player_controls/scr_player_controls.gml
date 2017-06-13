
//abilities.
if face_direction = "right" || face_direction = "left"{
abi_left_sprite = poop_left_sprite;
abi_right_sprite = poop_left_sprite;}

if face_direction = "up"{
abi_left_sprite = poop_up_sprite;
abi_right_sprite = poop_up_sprite;}

if face_direction = "down"{
abi_left_sprite = poop_down_sprite;
abi_right_sprite = poop_down_sprite;}




//left ability
if action <= 0 && g.inventory_open = 0{
if g.button_pressed[player_num,g.button_X]{
sprite_index = abi_left_sprite;
image_speed = .25;
image_index = 0;
action = sprite_get_number(sprite_index)/image_speed;
//action_performed = 0;
}

if g.button_pressed[player_num,g.button_B]{
sprite_index = abi_right_sprite;
image_speed = .25;
image_index = 0;
action = sprite_get_number(sprite_index)/image_speed;
//action_performed = 0;
}
}

/*
if action > 0 && sprite_index = abi_left_sprite && image_index = 7 && action_performed = 0{
action_performed = 1;
instance_create_depth(x,y,depth,obj_poop);}
*/












