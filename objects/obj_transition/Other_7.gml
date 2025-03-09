room_goto(target_rm);
obj_player1.x = target_x;
obj_player1.y = target_y;

// funny fade out
image_speed = -1;

instance_destroy();