
//change sprite and face with direction
if direction = 0{sprite_index = walk_sprite;face = -1;}
if direction = 180{sprite_index = walk_sprite;face = 1;}
if direction = 90{sprite_index = walk_up_sprite;}
if direction = 270{sprite_index = walk_down_sprite;}


//reset anim and freeze. change to stand sprite
if speed > .1{
image_speed = speed/4;}
else{
image_speed = 0;
image_index = 0;
if stand_sprite != spr_blank{sprite_index = stand_sprite;}
}