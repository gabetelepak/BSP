
view_xview[0] = 0;
view_yview[0] = 0;


if keyboard_check_pressed(ord('1')){
room_goto(rm_park_night);
screen_flash = 1;
game_phase='park night';
}


if g.pug_id[0].x <= 32{
g.pug_id[0].x = 64;
g.ascend_treehouse = 149;
g.ascend_treehouse_dir = 'down';
screen_flash = 1;
game_phase='park night';
room_goto(rm_park_night);

}
