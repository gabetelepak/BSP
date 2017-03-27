//creates a sprite from a surface
//(surface,row,number of subimages,xorig,yorig)
var newspr = 0;

newspr = sprite_create_from_surface(argument0, 0, argument1*48, 48, 48, 0, 0, argument3, argument4);
if argument2 > 1{
var newsprx = 1;
repeat(argument2-1){
sprite_add_from_surface(newspr, argument0, newsprx*48, argument1*48, 48, 48, 0, 0);
newsprx += 1;}}

return newspr;