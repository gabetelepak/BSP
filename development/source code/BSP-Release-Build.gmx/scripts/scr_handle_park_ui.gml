//reset game after all tasks completed, or idle

i = 0;
i += check_firefly;
i += check_babyduck;
i += check_granny;
i += check_frog;
i += check_duck;
i += check_sandwich;
if i  >= 6{
game_finished = 1;}

idle_time += 1;
if game_finished = 1{
finished_time += 1;}

if reset_time > 0{reset_time -= 1;}

if finished_time >= 5*30 || idle_time >= 30*30 || reset_time = 1{
game_restart();}
