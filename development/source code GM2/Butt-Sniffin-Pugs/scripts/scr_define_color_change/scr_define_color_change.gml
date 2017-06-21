//must be called in the instance executing the shader.


    hnd_colorIn = shader_get_uniform(shd_color_change, "colorIn");
    hnd_colorOut = shader_get_uniform(shd_color_change, "colorOut");
    hnd_colorTolerance = shader_get_uniform(shd_color_change, "colorTolerance");
    hnd_blend = shader_get_uniform(shd_color_change, "blend");

    
max_colors = 0; 
i = 0;        
colorIn[i] = make_color_rgb(140,240,164);
colorOut[i] = make_color_rgb(54,113,123);
i+=1;