g.ascend_treehouse = 0;
customize_furn = 0;
th_current_select_spot = 0;
th_current_select_furn = 0;
th_selection_frame = 0;


//select spots
ix = 43;
iy = 146;
i = 0;
th_select_x[i] = ix;
th_select_y[i] = iy;
th_select_furn[i] = 0;
i+=1;
ix += 38;
th_select_x[i] = ix;
th_select_y[i] = iy;
th_select_furn[i] = 0;
i+=1;
ix += 38;
th_select_x[i] = ix;
th_select_y[i] = iy;
th_select_furn[i] = 0;
i+=1;
ix += 38;
th_select_x[i] = ix;
th_select_y[i] = iy;
th_select_furn[i] = 0;
i+=1;

ix = 248+8;
iy = 97;
th_select_x[i] = ix;
th_select_y[i] = iy;
th_select_furn[i] = 0;
i+=1;
ix += 38;
th_select_x[i] = ix;
th_select_y[i] = iy;
th_select_furn[i] = 0;

max_th_furn = 0;
i = 0;
th_furn_item[i] = spr_blank;i+=1;
th_furn_item[i] = spr_th_furn_flowers;i+=1;
th_furn_item[i] = spr_th_furn_duck_float;i+=1;
th_furn_item[i] = spr_th_furn_egg_chair;i+=1;
th_furn_item[i] = spr_th_furn_tent;i+=1;
max_th_furn = i-1;

th_current_select_furn = th_select_furn[th_current_select_spot];

select_draw_x = th_select_x[th_current_select_spot];
select_draw_y = -32;

