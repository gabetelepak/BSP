snapped_x = floor(x/12)*12;
snapped_y = floor(x/12)*12;
ldirection = direction;


if move > 0{
speed = lerp(speed,max_speed,.25);}


if move <= 0{
speed = lerp(speed,0,.25);}


if !place_free(x+hspeed,y){hspeed = 0;move = 0;}
if !place_free(x,y+vspeed){vspeed = 0;move = 0;}

if show_interaction = 0{
if wander_alarm > 0{wander_alarm -= 1;}else{
wander_alarm = 30+(irandom(4)*15);
if move = 0{
i = irandom(7);
move = 1;
direction = i*45;

//move towards start location instead if too far from it.
if point_distance(x,y,start_x,start_y) > 96{
direction = floor(point_direction(x,y,start_x,start_y)/8)*8;}


}else
{move = 0;}}
}

draw_direction = direction;
