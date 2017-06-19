event_inherited();

shadow_sprite = spr_sammy_shadow;
is_item = 0;
interaction = 0;
sprite_index = spr_poop_create;
image_speed = .75;

explode = 0;//explode poop and die.

//explode other poops upon creation
if instance_exists(obj_poop){
with obj_poop{
if id != other.id{
if explode = 0{explode = 1;}}}}

dust_alarm = 0;