/// @description Insert description here
// You can write your code in this editor

event_inherited();

//pick which recycle item to be at random

item_sprite[0] = spr_waterbottle;
item_name[0] = "Water Bottle";
item_sprite[1] = spr_coffeecan;
item_name[1] = "Coffee Can";
item_sprite[2] = spr_coffeecup;
item_name[2] = "Coffee Cup";
item_sprite[3] = spr_coke;
item_name[3] = "Coke Can";
item_sprite[4] = spr_newspaper;
item_name[4] = "Newspaper";
item_sprite[5] = spr_tuna;
item_name[5] = "Tuna Can";


i = irandom(5);
sprite_index = item_sprite[i];
name = item_name[i];
 