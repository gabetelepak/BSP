


pug_power += 2;

if pug_power > pug_power_max{
pug_power = 0;}

i = pug_power;
abi_left_anim = pug_power_anim[i]
abi_left_icon = pug_power_icon[i];
abi_left_snd = pug_power_snd[i];
g.spr_left_ui[player_number] = pug_power_ui_icon[i];

i = pug_power+1;
abi_right_anim = pug_power_anim[i]
abi_right_icon = pug_power_icon[i];
abi_right_snd = pug_power_snd[i]
g.spr_right_ui[player_number] = pug_power_ui_icon[i];

