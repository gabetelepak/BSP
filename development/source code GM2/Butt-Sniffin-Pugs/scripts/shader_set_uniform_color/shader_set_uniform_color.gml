//  Utility function to pass (vec4) color and alpha values to shaders
//
//  shader_set_uniform_color(color,alpha)
//      color   standard GM color value
//      alpha   given in [0,1] range
{
    shader_set_uniform_f(argument0,color_get_red(argument1)/255,color_get_green(argument1)/255,color_get_blue(argument1)/255,argument2);
}