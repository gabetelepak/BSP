if talking_head_current_string != ''{
ix = (view_xview[0] + view_wview[0]*.5);
iy = view_yview[0] + view_hview[0];
draw_sprite(spr_talking_head_bg,i,ix,iy);

if talking_head_draw_string = talking_head_current_string{
draw_sprite(spr_th_a_button,anim*.1,ix+133,iy-15);}


ix = (view_xview[0] + view_wview[0]*.25) - 2;
iy = view_yview[0] + view_hview[0] - 34;
i = 0;
if talking_head_draw_string != talking_head_current_string && 
talking_head_current_string != ''{i = anim*(talk_speed/8);}
draw_sprite(spr_talking_head,i,ix,iy);

draw_set_font(font_talking_heads)
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

ix = (view_xview[0] + view_wview[0]*.5) - 115;
iy = view_yview[0] + view_hview[0] - 54 - 6;
draw_text_ext(ix,iy,talking_head_draw_string,16,244);
}
