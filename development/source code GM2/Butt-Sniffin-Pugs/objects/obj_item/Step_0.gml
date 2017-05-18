/// @description Insert description here
// You can write your code in this editor

event_inherited();

scr_interaction(); 



//handle item death(pickup anim)
if item_death > 0{item_death += 1;

alpha = lerp(alpha,0,.1);
z = lerp(z,12,.1);

if item_death >= 31{instance_destroy();}

}