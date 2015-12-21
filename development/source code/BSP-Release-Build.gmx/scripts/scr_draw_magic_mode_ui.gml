//draw magic mode ui
if instance_exists(obj_player){
with obj_player{
if magic_mode > 0{
i = (1/40)*magic_mode_y;
draw_sprite_ext(spr_mm_target,magic_mode_clear,build_x,build_y,1,1,0,c_white,i);

draw_sprite_ext(spr_mm_ui_bg,0,x,y+52-12,1,1,0,c_white,i);
draw_sprite_ext(spr_mm_arrow_button,g.button[player_number,g.button_DLEFT],x-50,y+52-12,1,1,0,c_white,i);
draw_sprite_ext(spr_mm_arrow_button,g.button[player_number,g.button_DRIGHT],x+50,y+52-12,-1,1,0,c_white,i);

draw_sprite_ext(build_icon[1],0,x-35,y+52-12,.5,.5,0,c_white,i);
draw_sprite_ext(build_icon[2],0,x,y+52-12,1,1,0,c_white,i);
draw_sprite_ext(build_icon[3],0,x+35,y+52-12,.5,.5,0,c_white,i);


}
}}
