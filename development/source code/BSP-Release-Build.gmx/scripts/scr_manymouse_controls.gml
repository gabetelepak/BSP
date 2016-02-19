i13 = argument0;

cx = floor(window_get_width()/2);
cy = floor(window_get_height()/2);

mx = g.dxpos[i13];
if abs(mx) < 6{mx = 0;}
my = g.dypos[i13];
if abs(my) < 6{my = 0;}

if floor(mx) < 0{
g.button[i13,g.button_LEFT] = 1;}
if floor(mx) > 0{
g.button[i13,g.button_RIGHT] = 1;}
if floor(my) > 0{
g.button[i13,g.button_UP] = 1;}
if floor(my) < 0{
g.button[i13,g.button_DOWN] = 1;}

window_mouse_set(cx, cy);


if g.mm_button[i13,0] = 1{
g.button[i13,g.button_LT] = 1;}

if g.mm_button[i13,1] = 1{
g.button[i13,g.button_RT] = 1;}

if g.mm_button[i13,2] = 1{
g.button[i13,g.button_Y] = 1;
g.button[i13,g.button_A] = 1;}

