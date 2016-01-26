if (g.button[0,g.button_B] || g.button[1,g.button_B]) && b_pressed = 0{
scr_sound(snd_button,g.sfx_volume);
if show_unlock_menu = 0{show_unlock_menu = 1;
unlock_alert = 0;}else{
show_unlock_menu = 0;}
b_pressed = 1;
}

if !g.button[0,g.button_B] && !g.button[1,g.button_B]{
b_pressed = 0;}

if show_unlock_menu = 1{
draw_sprite(spr_unlock_menu,0,vx+vw/2,vy+50);

draw_sprite(spr_ui_checkmark,unlock_bubble_wand,(vx+vw/2)-80,vy+50);
draw_sprite(spr_ui_checkmark,unlock_bugnet,(vx+vw/2)-30,vy+50);
draw_sprite(spr_ui_checkmark,unlock_frisbee,(vx+vw/2)+18,vy+50);
draw_sprite(spr_ui_checkmark,unlock_beachball,(vx+vw/2)+68,vy+50);



}
