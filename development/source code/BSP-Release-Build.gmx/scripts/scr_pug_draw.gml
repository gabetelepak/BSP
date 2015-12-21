draw_sprite_ext(sprite_index,image_single,x,y-magic_mode_y,1*face,1,rot,color,alpha);


//draw_text(x,y,magic_mode);

//draw shadow for mm
if magic_mode > 0{
i = (1/40)*magic_mode_y;
i2 = 0;
if magic_mode = 2{i2 = image_single;}
draw_sprite_ext(spr_hover_shadow,i2,x,y,1,1,0,c_white,i*.25);}
