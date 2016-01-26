//x,y,radius,speed

var opt13 = 0, i13 = random(360);

if argument3 = 0{
instance_create(argument0+random(argument2)-argument2/2,argument1+random(argument2)-argument2/2,obj_sparkle);

opt13 = instance_create(argument0+random(argument2*2)-argument2,argument1+random(argument2*2)-argument2,obj_sparkle);
opt13.sprite_index = spr_sparkle1;
opt13.direction = i13+random(180)+90;
}
else{
opt13 = instance_create(argument0+random(6)-3,argument1+random(6)-3,obj_sparkle);
opt13.sprite_index = spr_sparkle1;
opt13.speed = ceil(random(argument3));
opt13.direction = i13;

opt13 = instance_create(argument0+random(6)-3,argument1+random(6)-3,obj_sparkle);
opt13.sprite_index = spr_sparkle1;
opt13.speed = ceil(random(argument3));
opt13.direction = i13+random(180)+90;

}


