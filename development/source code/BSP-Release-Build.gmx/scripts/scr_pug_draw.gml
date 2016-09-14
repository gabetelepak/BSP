draw_sprite_ext(sprite_index,image_single,x,y-magic_mode_y-z,1*face,1,rot,color,alpha);
if spr_item != spr_blank && sprite_index != spr_itemget && hurt <= 0
&& sprite_index != spr_sniffed{
draw_sprite_ext(spr_item,image_single,x,y-magic_mode_y,1*face,1,rot,color,alpha);}

//draw_text(x,y-48,g.selected_char[player_number]);

//draw shadow for mm
if magic_mode > 0{
i = (1/40)*magic_mode_y;
i2 = 0;
if magic_mode = 2{i2 = image_single;}
draw_sprite_ext(spr_hover_shadow,i2,x,y,1,1,0,c_white,i*.25);}

//adjust for shadow
i = 0;
if direction = 90 && speed > 0{
i = -3;}

if spr_shadow != spr_blank{
if surface_exists(g.surf_shadow){
surface_set_target(g.surf_shadow);
draw_set_blend_mode(bm_normal);
draw_sprite_ext(spr_shadow,0,x,y+i,shadow_scalex,shadow_scaley,0,g.c_night_shadow,1);
draw_set_blend_mode(bm_normal);
surface_reset_target();
}}



//sniff icons popup
if sniff_icon_alarm < sniff_icon_alarm_max{
sniff_icon_alarm += 1;
i2 = abi_left_icon;
repeat(2){
i = 0;//(sniff_icon_alarm/4)+((sniff_icon_alarm_max-sniff_icon_alarm)/4);
if i2 = abi_left_icon{
ix = x-32-i;
iy = y-32-i*.75;}
else{
ix = x+32+i;
iy = y-32-i*.75;}

if sniff_icon_alarm < 11{
i = sniff_icon_alarm;
draw_sprite(spr_tip_appear,i,ix,iy);}

if sniff_icon_alarm > sniff_icon_alarm_max-13{
i = sniff_icon_alarm - (sniff_icon_alarm_max-13);
draw_sprite(spr_tip_disappear,i,ix,iy);}

if sniff_icon_alarm >= 11 && sniff_icon_alarm <= sniff_icon_alarm_max-13{
i = floor(sniff_icon_alarm/4) div 2;
draw_sprite(i2,i,ix,iy);}
i2 = abi_right_icon;}
}


//frisbee catch number
if show_catch > 0{
if show_catch = 30{
scr_sound(snd_count,g.sfx_volume);
if g.frisbee_catch >= 5{scr_sound(snd_pug_ability,g.sfx_volume);}}
show_catch -= 1;
draw_sprite(spr_big_numbers,g.frisbee_catch - 1,x,y-(52)-10+show_catch);
if show_catch = 0{
if g.frisbee_catch >= 5{g.frisbee_catch = 0;}}}




