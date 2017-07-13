
if image_index = 5 && action_performed = 0{
action_performed = 1;

ix = 0;iy = 0;
if face_direction = "right"{ix = 16; iy = 2;}
if face_direction = "left"{ix = -16; iy = 2;}
if face_direction = "up"{ix = 0; iy = -20;}
if face_direction = "down"{ix = 0; iy = 6;}

opt = instance_create_depth(x+ix,y+iy,depth,obj_dig_dirt);
}