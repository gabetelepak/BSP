
//abilities.


//left ability
if action <= 0 && g.inventory_open = 0{
if g.button_pressed[player_num,g.button_X]{
sprite_index = abi_left_sprite;
image_speed = .25;
action = sprite_get_number(sprite_index)/image_speed;}

if g.button_pressed[player_num,g.button_B]{
sprite_index = abi_right_sprite;
image_speed = .25;
action = sprite_get_number(sprite_index)/image_speed;}
}