<<<<<<< HEAD
// Declare a trigger variable at the start if it doesn't exist
if (!variable_global_exists("global.crash_timer")) {
    global.crash_timer = -1;
}

// Check collision, start looping the title change
if (place_meeting(x, y, obj_crashplayerobj)) {
    if (global.crash_timer == -1) {
        global.crash_timer = 0;
    }
    
    if (global.crash_timer >= 600) { // After 10 seconds (600 frames at 60 FPS)
        draw_set_color(c_red);
        draw_rectangle(0, 0, room_width, room_height, false);
        sound_play(snd_err);
    }
    
    if (global.crash_timer >= 780) { // After 13 seconds (780 frames), crash the game
        show_error("Game crashed unexpectedly!", true);
    }
    
    if (global.crash_timer % 10 == 0) { // Flashes every 10 frames
        var garbage = "";
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=hsefil2u4907957258t4witry4w7it4wr7eit7gfi7wrtgf7wITRfgswURI7ftgswutfguowerygf7wt47o8ctwocrrtb64wqc7rw4gtrr7w8ibgfyw784rt4bw7trbytr8watb7waitrfw7cirw374621398012391294703912-=30`-22w ubxp0gbe79WBPCE7wg9bcprHOYRTVBGWR8ATVB4W47W479VVVVW9VRT7W4Inhxaufnencuofbguxfef cbgeucbgugfeuifctibubwfkecw!@#$%^&*()!@#$%^&*()_!@#$%^&*()~!@#$%^&*()_~!@#$%^&*()_+~!@#$%^&*()_~!@#$%^&*()_+";
        var length = irandom_range(5, 20);

        for (var i = 0; i < length; i++) {
            garbage += string_char_at(chars, irandom_range(1, string_length(chars)));
        }

        // Change window title
        window_set_caption(garbage);
    }
    
    global.crash_timer++;
} else {
    global.crash_timer = -1;
}

if (global.crash_timer == 600) {
    sound_play(snd_err);
}



if (global.crash_timer >= 600) {
    view_xview[0] += irandom_range(-5, 5);
    view_yview[0] += irandom_range(-5, 5);
}

if (global.crash_timer >= 600) {
    if (global.crash_timer % 5 == 0) { // Every 5 frames
        display_mouse_set(irandom(room_width), irandom(room_height));
    }
}

if (global.crash_timer == 750) { // 3 seconds before crash
    show_message("Critical Error: Memory corruption detected. Attempting recovery...");
}
=======
// Declare a trigger variable at the start if it doesn't exist
if (!variable_global_exists("global.crash_timer")) {
    global.crash_timer = -1;
}

// Check collision, start looping the title change
if (place_meeting(x, y, obj_crashplayerobj)) {
    if (global.crash_timer == -1) {
        global.crash_timer = 0;
    }
    
    if (global.crash_timer >= 600) { // After 10 seconds (600 frames at 60 FPS)
        draw_set_color(c_red);
        draw_rectangle(0, 0, room_width, room_height, false);
        sound_play(snd_err);
    }
    
    if (global.crash_timer >= 780) { // After 13 seconds (780 frames), crash the game
        show_error("Game crashed unexpectedly!", true);
    }
    
    if (global.crash_timer % 10 == 0) { // Flashes every 10 frames
        var garbage = "";
        var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()_+-=hsefil2u4907957258t4witry4w7it4wr7eit7gfi7wrtgf7wITRfgswURI7ftgswutfguowerygf7wt47o8ctwocrrtb64wqc7rw4gtrr7w8ibgfyw784rt4bw7trbytr8watb7waitrfw7cirw374621398012391294703912-=30`-22w ubxp0gbe79WBPCE7wg9bcprHOYRTVBGWR8ATVB4W47W479VVVVW9VRT7W4Inhxaufnencuofbguxfef cbgeucbgugfeuifctibubwfkecw!@#$%^&*()!@#$%^&*()_!@#$%^&*()~!@#$%^&*()_~!@#$%^&*()_+~!@#$%^&*()_~!@#$%^&*()_+";
        var length = irandom_range(5, 20);

        for (var i = 0; i < length; i++) {
            garbage += string_char_at(chars, irandom_range(1, string_length(chars)));
        }

        // Change window title
        window_set_caption(garbage);
    }
    
    global.crash_timer++;
} else {
    global.crash_timer = -1;
}

if (global.crash_timer == 600) {
    sound_play(snd_err);
}



if (global.crash_timer >= 600) {
    view_xview[0] += irandom_range(-5, 5);
    view_yview[0] += irandom_range(-5, 5);
}

if (global.crash_timer >= 600) {
    if (global.crash_timer % 5 == 0) { // Every 5 frames
        display_mouse_set(irandom(room_width), irandom(room_height));
    }
}

if (global.crash_timer == 750) { // 3 seconds before crash
    show_message("Critical Error: Memory corruption detected. Attempting recovery...");
}
>>>>>>> 5da5967 (title screen update yay)
