//gametime
gametime += 1;
if gametime > 99999{
gametime = 0;}

//button bounce
button_bounce += button_bounce_dir/10;
if button_bounce <= 0{
button_bounce = 0;
button_bounce_dir = +1;}
if button_bounce >= 3{
button_bounce = 3;
button_bounce_dir = -1;}

//slow blink
slow_blink_alarm += 1;
if slow_blink_alarm >= 30{
slow_blink_alarm = 0;
if slow_blink = 0{slow_blink = 1;}else{slow_blink = 0;}}

//universal animation speed
anim += 1;
if anim >= 99999{anim = 0;}



