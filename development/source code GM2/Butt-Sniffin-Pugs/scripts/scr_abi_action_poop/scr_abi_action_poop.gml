

if image_index = 7 && action_performed = 0{
action_performed = 1;

ix = 0;iy = 0;
if face_direction = "right"{ix = -20; iy = 2;}
if face_direction = "left"{ix = 20; iy = 2;}
if face_direction = "up"{ix = 0; iy = 12;}
if face_direction = "down"{ix = 0; iy = -12;}

opt = instance_create_depth(x+ix,y+iy,depth,obj_poop);
opt.speed = 4;
opt.direction = draw_direction+180;
}