// If crash sequence has started, apply visual glitches
if (global.crash_timer >= 600) { 
    shader_set(shd_glitch);
    var time_uniform = shader_get_uniform(shd_glitch, "time");
    shader_set_uniform_f(time_uniform, global.crash_timer / 60.0);
}

// Apply screen shake
if (global.crash_timer >= 600) { 
    view_xview[0] += irandom_range(-5, 5); 
    view_yview[0] += irandom_range(-5, 5);
}

// Draw the object normally
draw_self();

// Reset shader after drawing
if (global.crash_timer >= 600) { 
    shader_reset();
}

// Fake mouse cursor glitch
if (global.crash_timer >= 600) {
    draw_sprite(spr_cursor_glitch, irandom(3), mouse_x + irandom_range(-10, 10), mouse_y + irandom_range(-10, 10));
}

// Fake error screen before crash
if (global.crash_timer >= 750) { 
    draw_set_color(c_black);
    draw_rectangle(0, 0, room_width, room_height, false);
    
    draw_set_color(c_red);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    draw_text(room_width / 2, room_height / 2, "ERROR: MEMORY VIOLATION");
}
