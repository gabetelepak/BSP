//arg0 = object to count
//arg1 = distance
count = 0;
distance = argument1;
with argument0{
if distance_to_point(other.x,other.y) < other.distance{
other.count += 1;}}
return count;
