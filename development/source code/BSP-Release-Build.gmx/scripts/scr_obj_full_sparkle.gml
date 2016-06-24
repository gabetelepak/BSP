//speed
i13 = ceil((sprite_get_width(sprite_index) * sprite_get_height(sprite_index)) * .002)+1;
repeat(i13){
x13 = (x - sprite_get_xoffset(sprite_index)) + irandom(sprite_get_width(sprite_index)); 
y13 = (y - sprite_get_yoffset(sprite_index)) + irandom(sprite_get_height(sprite_index));
if position_meeting(x13,y13,id){
opt13 = instance_create(x13,y13+random(6),obj_sparkle);
opt13.sprite_index = spr_sparkle1;
opt13.speed = random(argument0);
opt13.direction = 90;}}
