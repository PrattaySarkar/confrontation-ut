<<<<<<< HEAD
// Ensure manual frame control
image_speed = 0;

// Secret Code Variables
if (!variable_global_exists("abort_input")) global.abort_input = "";
if (!variable_global_exists("crash_time")) global.crash_time = -1; // No crash by default
var correct_sequence = "214239995pscps";

// Normal Input Handling
if (image_index == 0 && keyboard_check_pressed(ord("Z"))) {
    image_index = 1;
    audio_play_sound(snd_switch, 1, false);
} 
else if (image_index == 1 && keyboard_check(vk_right)) {
    image_index = 2;
    audio_play_sound(snd_switch, 1, false);
} 
else if (image_index == 2 && keyboard_check_pressed(ord("Z"))) {
    audio_play_sound(snd_nuhuh, 1, false);
} 
else if (image_index == 2 && keyboard_check(vk_left)) {
    image_index = 1;
    audio_play_sound(snd_switch, 1, false);
} 
else if (image_index == 1 && keyboard_check_pressed(ord("Z"))) {
    audio_play_sound(snd_confirm, 1, false);
    room_goto(rm_longhallway);
}

// Handle Secret Code Input when at frame 0
if (image_index == 0) {
    var key = keyboard_lastkey;
    if (key > 0) {
        var char = string_lower(chr(key)); // Normalize case

        // Append to stored input
        global.abort_input += char;

        // Keep only the latest portion
        if (string_length(global.abort_input) > string_length(correct_sequence)) {
            global.abort_input = string_copy(global.abort_input, 2, string_length(correct_sequence));
        }

        // If the correct sequence is entered, play sound and start crash timer
        if (global.abort_input == correct_sequence) {
            audio_play_sound(snd_confirm, 1, false);
            image_index = 4;
            global.crash_time = current_time + 5000; // 5 seconds (milliseconds)
        }
    }
}

// Check if crash should happen
if (global.crash_time > 0 && current_time >= global.crash_time) {
    show_error("Game has crashed!", true); // Force crash
}
=======
// Ensure manual frame control
image_speed = 0;

// Secret Code Variables
if (!variable_global_exists("abort_input")) global.abort_input = "";
if (!variable_global_exists("crash_time")) global.crash_time = -1; // No crash by default
var correct_sequence = "214239995pscps";

// Normal Input Handling
if (image_index == 0 && keyboard_check_pressed(ord("Z"))) {
    image_index = 1;
    audio_play_sound(snd_switch, 1, false);
} 
else if (image_index == 1 && keyboard_check(vk_right)) {
    image_index = 2;
    audio_play_sound(snd_switch, 1, false);
} 
else if (image_index == 2 && keyboard_check_pressed(ord("Z"))) {
    audio_play_sound(snd_nuhuh, 1, false);
} 
else if (image_index == 2 && keyboard_check(vk_left)) {
    image_index = 1;
    audio_play_sound(snd_switch, 1, false);
} 
else if (image_index == 1 && keyboard_check_pressed(ord("Z"))) {
    audio_play_sound(snd_confirm, 1, false);
    room_goto(rm_longhallway);
}

// Handle Secret Code Input when at frame 0
if (image_index == 0) {
    var key = keyboard_lastkey;
    if (key > 0) {
        var char = string_lower(chr(key)); // Normalize case

        // Append to stored input
        global.abort_input += char;

        // Keep only the latest portion
        if (string_length(global.abort_input) > string_length(correct_sequence)) {
            global.abort_input = string_copy(global.abort_input, 2, string_length(correct_sequence));
        }

        // If the correct sequence is entered, play sound and start crash timer
        if (global.abort_input == correct_sequence) {
            audio_play_sound(snd_confirm, 1, false);
            image_index = 4;
            global.crash_time = current_time + 5000; // 5 seconds (milliseconds)
        }
    }
}

// Check if crash should happen
if (global.crash_time > 0 && current_time >= global.crash_time) {
    show_error("Game has crashed!", true); // Force crash
}
>>>>>>> 5da5967 (title screen update yay)
