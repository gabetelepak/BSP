/// @description emulates dynamic depth with tiles
// scr_tile_deepen(layer_name, grid_width, grid height, depth offset)
/*
this script will sort the tilemap of a given layer into multiple layers set at various depth
to emulate dynamic depth based on the y value of each tile. 
basically this script sets each tile's depth to = depth_offset(should be room_height) - y;
so any object wich also has it's depth set dynamically will appear above and below the tiles 
appropriately.
*/

var lay_id = layer_get_id(argument0);
var map_id = layer_tilemap_get_id(lay_id);
var tile_id = tilemap_get_tileset(map_id);


//craete layers and tilemaps at depths. 
var grid_x = argument1;
var grid_y = argument2;
var depth_offset = argument3;
var i = 0;
repeat(depth_offset/grid_y){
tiledepth_layer[i] = layer_create(depth_offset-i-(grid_y-1));
tiledepth_tilemap[i] = layer_tilemap_create(tiledepth_layer[i], 0, 0, tile_id, room_width/grid_x, room_height/grid_y);
i += grid_y;}


//handle original layer
if layer_tilemap_exists(lay_id,map_id){

cy = 0;
repeat(room_height/grid_y){
cx = 0;
repeat(room_width/grid_x){

ix = tilemap_get_cell_x_at_pixel(map_id, cx, cy);
iy = tilemap_get_cell_y_at_pixel(map_id, cx, cy);
tile_id = tilemap_get(map_id, ix, iy);

if layer_tilemap_exists(tiledepth_layer[cy],tiledepth_tilemap[cy]){
tilemap_set_at_pixel(tiledepth_tilemap[cy], tile_id, cx, cy);}

cx += grid_x;}//x
cy += grid_y;}//y

}




