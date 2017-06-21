surface_set_target(surf0);
shader_set(shd_color_change);
    shader_set_uniform_color(hnd_colorIn, colorIn[i], 1.0);
    shader_set_uniform_color(hnd_colorOut, colorOut[i], 1.0);
    shader_set_uniform_f(hnd_colorTolerance, 0.0, 0.0, 0.0, 0.0);
    shader_set_uniform_f(hnd_blend, 1.0);
draw_surface_ext(surf0,0,0,1,1,0,c_white,1);
shader_reset();
surface_reset_target();