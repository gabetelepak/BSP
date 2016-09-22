//
spr_talking_head = spr_moose_talk;
talk_speed = 1.5;
talking_head_draw_string = '';
talking_head_current_string = '';
ltalking_head_current_string = '';
talking_head_step = 0;
talk_current_sound = 0;
syllable_factor = 1;
talking_head_index = 0;

//moose
talk_sound[0] = snd_moose1_2;
talk_sound[1] = snd_moose1_3;
talk_sound[2] = snd_moose1_1;
talk_sound[3] = snd_moose2_1;
talk_sound[4] = snd_moose2_2;
talk_sound[5] = snd_moose2_3;

talk_sprite[0] = spr_moose_talk;
talk_sprite[1] = spr_moose_talk_happy;
talk_sprite[2] = spr_moose_talk_scared;
talk_sprite[3] = spr_moose_talk_mad;
talk_sprite[4] = spr_moose_talk_suprised;
talk_sprite[5] = spr_moose_talk_meh;
talk_sprite[6] = spr_moose_talk_dadjoke;

th_normal = 0;
th_happy = 1;
th_scared = 2;
th_angry = 3;
th_suprised = 4;
th_meh = 5;
th_dadjoke = 6;

//clear text boxes.
i = 0;
repeat(30){
th_face[i] = th_normal;
th_line[i] = "";
i+=1;}


