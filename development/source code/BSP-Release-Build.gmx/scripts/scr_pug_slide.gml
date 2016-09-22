visible = 1;
if slide > 0{
slide += .25;
if slide < 9{
visible = 0;
y = obj_slide.y+8;
x = obj_slide.x+2+10*6;}
if slide >= 9{

direction = point_direction(x,y,obj_tree_left.x,obj_tree_left.y);
scr_dust(x,y,direction+180,1);
sprite_index = spr_scoot;
image_index = 0;
speed = 5;
face = -1;
//slide = 0;
visible = 1;
if scr_dis(x,y,obj_tree_left.x,obj_tree_left.y) <= 32{
slide = 0;
if obj_tree_left.drop_frisbee = 0{obj_tree_left.drop_frisbee = 2;}
scr_dust(x,y,0,3);
x -= 10;
hurt = 2;}
}}/////////////
