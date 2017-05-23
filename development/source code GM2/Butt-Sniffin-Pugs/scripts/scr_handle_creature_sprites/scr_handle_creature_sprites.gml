

//if no action, walk / stand
if action = 0{
//change sprite and face with direction
if draw_direction >= 270+45 || draw_direction <= 45{sprite_index = walk_sprite;face = -1;}
if draw_direction >= 180-45 && draw_direction <= 180+45{sprite_index = walk_sprite;face = 1;}
if draw_direction >= 45 && draw_direction <= 90+45{sprite_index = walk_up_sprite;}
if draw_direction >= 270-45 && draw_direction <= 270+45{sprite_index = walk_down_sprite;}


//reset anim and freeze. change to stand sprite
if speed > .1{
image_speed = speed/4;}
else{
image_speed = 0;
image_index = 0;
if (id = g.player_object[1] && g.lsh[player_num] == 0 && g.lsv[player_num] == 0) ||
id != g.player_object[1]{
if stand_sprite != spr_blank{
sprite_index = stand_sprite;}}
}
}//end action