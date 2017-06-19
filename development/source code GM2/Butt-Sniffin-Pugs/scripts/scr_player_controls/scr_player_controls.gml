
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
action_performed = 0;
}

if g.button_pressed[player_num,g.button_B]{
sprite_index = abi_right_sprite;
image_speed = .25;
image_index = 0;
action = sprite_get_number(sprite_index)/image_speed;
action_performed = 0;
}
}


if action > 0 && sprite_index = abi_left_sprite && image_index = 7 && action_performed = 0{
action_performed = 1;

ix = 0;iy = 0;
if face_direction = "right"{ix = -20; iy = 2;}
if face_direction = "left"{ix = 20; iy = 2;}
if face_direction = "up"{ix = 0; iy = 12;}
if face_direction = "down"{ix = 0; iy = -12;}

opt = instance_create_depth(x+ix,y+iy,depth,obj_poop);
opt.speed = 4;
opt.direction = draw_direction+180;
}













