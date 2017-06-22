//called after scr_define_color_change
//sets up which colors change to what new colors.


max_colors = 0;
i=0;      
colorIn[i] = make_color_rgb(231, 231, 231);
colorOut[i] = make_color_rgb(241, 237, 230);
i+=1;
colorIn[i] = make_color_rgb(206, 206, 206);
colorOut[i] = make_color_rgb(226, 217, 209);
i+=1;
colorIn[i] = make_color_rgb(165, 165, 165);
colorOut[i] = make_color_rgb(198, 182, 174);
i+=1;
colorIn[i] = make_color_rgb(117, 117, 117);
colorOut[i] = make_color_rgb(197, 166, 136);
i+=1;
colorIn[i] = make_color_rgb(86, 86, 86);
colorOut[i] = make_color_rgb(196, 150, 99);
i+=1;
colorIn[i] = make_color_rgb(44, 44, 44);
colorOut[i] = make_color_rgb(147, 102, 74);


max_colors = i;