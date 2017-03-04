

opt = instance_create_depth(-1000,-1000,10000,argument0);



ix = 0;
iy = 0;
var generate_success = 0;

repeat(1000){
if scr_module_overlap(ix-12,iy-12,24) || ix = 0 || scr_filler_overlap(){
opt.x = floor((24+irandom(1440-48))/12)*12;
opt.y = (floor((hub_height+48)/12)*12) + floor(irandom(2400-192)/12)*12;
ix = opt.x;
iy = opt.y;}else{
generate_success = 1;}}



if generate_success = 1{
opt.generated = 2;}
else{
with opt{instance_destroy();}}








