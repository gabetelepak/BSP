/// @description Insert description here
// You can write your code in this editor

///Initialize Variables
message_current = 0;
timer = 0;
cutoff = 0;
portrait = "none";
mouth_index = 0;

t = 0;
//Amplitude & Freq for Wavy Text
amplitude = 2;
freq = 1;

done = false;


so_chat = snd_chat_click;
f_chat = font_0;
chatbox_sprite = spr_textbubble_day;
string_cursor_sprite = spr_ui_button_a;
default_text_color = c_dkgray;
selected_text_color = c_fuchsia;

x_offset = floor((g.camera_width - sprite_get_width(spr_textbubble_day))/2);
y_offset = 180;//g.camera_width - sprite_get_height(spr_textbubble_day) - x_offset;