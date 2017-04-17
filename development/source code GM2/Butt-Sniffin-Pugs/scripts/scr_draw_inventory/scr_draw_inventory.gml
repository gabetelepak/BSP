inv_x = camera_get_view_x(0) + (camera_width/2) - (430/2);
inv_y = camera_get_view_y(0) + (camera_height/2) - (234/2);



if inventory_open = 1{

draw_sprite(spr_ui_inventory,0,inv_x,inv_y);

}