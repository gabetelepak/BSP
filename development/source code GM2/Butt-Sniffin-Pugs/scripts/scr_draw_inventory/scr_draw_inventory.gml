inv_x = camera_get_view_x(0) + (camera_width/2) - (430/2);
inv_y = camera_get_view_y(0) + (camera_height/2) - (234/2);

ix = 119+16;
iy = 48+16;

if inventory_open = 1{

draw_sprite(spr_ui_inventory,0,inv_x,inv_y);


draw_set_font(font_0);

i = 0;
repeat(15){
draw_sprite(inv_slot_sprite[i],0,inv_x+ix,inv_y+iy+(sprite_get_height(inv_slot_sprite[i])/2));

if inv_slot_qt[i] >= 1{
draw_set_color(c_white);
draw_btext(inv_x+ix+8,inv_y+iy+5,inv_slot_qt[i]);}

ix += 40;
if ix >= 119+16+(40*5){ix = 119+16;iy += 40;}
i+=1;}

}