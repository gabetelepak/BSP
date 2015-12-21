//magic mode DB
i = 0;
build_icon[i] = spr_blank;
build_obj[i] = obj_beachball;i+=1;
build_icon[i] = spr_icon_firefly;
build_obj[i] = obj_firefly;
if g.mm_unlock_beachball{
build_icon[i] = spr_icon_beachball;
build_obj[i] = obj_beachball;}
i+=1;
build_icon[i] = spr_icon_firefly;
build_obj[i] = obj_firefly;
i+=1;
build_icon[i] = spr_icon_firefly;
build_obj[i] = obj_firefly;
if g.mm_unlock_frog = 1{
build_icon[i] = spr_icon_frog;
build_obj[i] = obj_firefly;}
i+=1;
build_icon_count = i-1;
