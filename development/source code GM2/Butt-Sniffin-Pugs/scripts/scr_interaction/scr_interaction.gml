

//override movement and face player.
if script_exists(interaction_script){
if interaction > 0{
if point_distance(x,y,g.player_object[pnum].x,g.player_object[pnum].y) < 32{
move = 0;
direction = point_direction(x,y,g.player_object[pnum].x,g.player_object[pnum].y);


if g.player_object[pnum].interaction_target <= 0{
g.player_object[pnum].interaction_target = id;}

if g.player_object[pnum].interaction_target = id{show_interaction = 1;}

}
else{show_interaction = 0;
if g.player_object[pnum].interaction_target = id{
g.player_object[pnum].interaction_target = 0;}}


if instance_exists(obj_dialogue){show_interaction = 0;}

if show_interaction > 0{
if g.button_pressed[pnum,g.button_A]{
script_execute(interaction_script);
}}
}else{show_interaction = 0;}
}



if show_interaction = 0{
interaction_alpha = lerp(interaction_alpha,0,1/10);}
else{
interaction_alpha = lerp(interaction_alpha,1,1/10);}
interaction_alpha = clamp(interaction_alpha,0,1);