/// @description Insert description here
// You can write your code in this editor


x = g.camera_x + x_offset;
y = g.camera_y + y_offset;


///Text

//t is for modifiers
t++;

//Set Font
draw_set_font(f_chat);

//Set Colour
draw_set_colour(c_dkgray);

//Read in array length
message_end = array_length_1d(message);

//If there are messages
if (message_end > 0)
{
    //Draw chat box
    draw_sprite(chatbox_sprite, 0, x, y);
    //Draw Portrait
    if (portrait != "none") draw_sprite(portrait, 0, x, y);
    
    //This is for the effects
    var modifier = 0;
    //Character Width
    var charWidth = 9;
    //How many characters allowed in each line
    if (portrait == "none") var lineEnd = 40;
    else var lineEnd = 40;
    //Variables for spacing characters
    var line = 0;
    var space = 0;
    var i = 1;
    //Delay time between printing each character
    var delay = 2;
    
    //Text Position
    var tY = y + 14;
    //Change the horizontal position if there is a portrait
    if (portrait == "none") var tX = x + 90;
    else var tX = x + 90;
    
    //If we are done printing out the current message
    if (cutoff == string_length(message[message_current]))
    {
        //draw blinking cursor
        timer++;
        if (timer < 15){ i2 = 0 } else{ i = 1;}
        if (timer > 30) timer = 0;
		draw_sprite(string_cursor_sprite, i2, x+414, y+58);
        
        //Check player input
        if (g.button_pressed[0,g.button_A])
        {
            //If we still have messages left, go to next message
            if (message_current < message_end-1)
            {
                message_current++;
                cutoff = 0;
            }
            //If we dont, make done = true and destroy this object
            else 
            {
                timer = 0;
                done = true;
            }
        }
    }
    
    //Typewriter
    //This is so we print each character one at a time
    if (cutoff < string_length(message[message_current]))
    {
        if (timer >= delay)
        {
            if(!audio_is_playing(so_chat)) audio_play_sound(so_chat, 10, false);
            cutoff++;
            timer = 0;
        }
        else timer++;
    }
    
    //Text
    while(i <= string_length(message[message_current]) && i <= cutoff)
    {   
        //check for modifier
        if string_char_at(message[message_current], i) = "\\"
        {
            modifier = real(string_char_at(message[message_current], ++i));
            ++i;
        }
        
        //Go to next line
        //Check if the current word fits inside the text box, and if not we go to the next line
        var length = 0;
        while (string_char_at(message[message_current], i) != " " && i <= string_length(message[message_current]))
        {
            i++;
            length++;
        }
        
        if (space+length > lineEnd)
        {
            space = 0;
            line++;
        }
        i -= length;
        
        //Draw Text
        switch(modifier)
        {
            case 0: //normal
            {
                draw_set_colour(default_text_color);
                draw_text(tX+(space*charWidth), tY+(13*line), string_char_at(message[message_current], i));
                break;
            }
            case 1: //shaky
            {
                draw_set_colour(default_text_color);
                draw_text(tX+(space*charWidth)+random_range(-1, 1), tY+(13*line)+random_range(-1, 1), string_char_at(message[message_current], i));
                break;
            }
            case 2: //color
            {
                draw_set_colour(c_lime);
                draw_text(tX+(space*charWidth), tY+(13*line), string_char_at(message[message_current], i));
                break;
            }
            case 3: //color and shake
            {
                draw_set_colour(c_lime);
                draw_text(tX+(space*charWidth)+random_range(-1, 1), tY+(13*line)+random_range(-1, 1), string_char_at(message[message_current], i));
                break;
            }
            case 4: //Sine movement
            {
                var so = t + i;
                var shift = sin(so*pi*freq/room_speed)*amplitude;
                draw_set_colour(default_text_color);
                draw_text(tX+(space*charWidth), tY+(13*line)+shift, string_char_at(message[message_current], i));
                break;
            }
            case 5: //Gradient Text
            {
                draw_set_colour(make_colour_hsv(t+i, 255, 255));
                draw_text(tX+(space*charWidth), tY+(13*line), string_char_at(message[message_current], i));
                break;
            }
            case 6: //Gradient & Sine
            {
                draw_set_colour(make_colour_hsv(t+i, 255, 255));
                var so = t + i;
                var shift = sin(so*pi*freq/room_speed)*amplitude;
                draw_text(tX+(space*charWidth), tY+(13*line)+shift, string_char_at(message[message_current], i));
                break;
            }
        }
        
        //Move to next character
        space++;
        i++;
    }
}