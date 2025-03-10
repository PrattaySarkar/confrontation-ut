<<<<<<< HEAD
// keys defined lol

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
run_key = keyboard_check(ord("X"));

// movement running feature
current_spd = move_spd;
if (run_key) current_spd *= 2; // this thing is kinda neat, dont delete this btw

// movement calculation :D, this thing calculates every move made by the player even in real life =) 

xspd = (right_key - left_key) * current_spd;
yspd = (down_key - up_key) * current_spd;

// collision things lol, it goes brrrrrr

if place_meeting(x + xspd, y, obj_wall1)
{
    xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall1)
{
    yspd = 0;
}

// x and y updating lol, Waterdvition: this is thing is kinda fun :D

x += xspd;
y += yspd;

// direction
if yspd == 0
{
    if xspd > 0 {face = RIGHT;}
    if xspd < 0 {face = LEFT;}
}

if xspd == 0
{
    if yspd > 0 {face = DOWN;}
    if yspd < 0 {face = UP;}
}

sprite_index = sprite[face];

// animations, kinda confusing...

if xspd == 0 && yspd == 0
{
    image_index = 0;
    image_speed = 0;
}
else
{
    image_speed = 1; // the default one (this is given for better understanding of the code)
    if (run_key) image_speed = 2; // Faster one, it sped up nimaton
}
=======
// keys defined lol

right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
run_key = keyboard_check(ord("X"));

// movement running feature
current_spd = move_spd;
if (run_key) current_spd *= 2; // this thing is kinda neat, dont delete this btw

// movement calculation :D, this thing calculates every move made by the player even in real life =) 

xspd = (right_key - left_key) * current_spd;
yspd = (down_key - up_key) * current_spd;

// collision things lol, it goes brrrrrr

if place_meeting(x + xspd, y, obj_wall1)
{
    xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall1)
{
    yspd = 0;
}

// x and y updating lol, Waterdvition: this is thing is kinda fun :D
if (can_move){
	x += xspd;
	y += yspd;

	// direction
	if yspd == 0
	{
	    if xspd > 0 {face = RIGHT;}
	    if xspd < 0 {face = LEFT;}
	}

	if xspd == 0
	{
	    if yspd > 0 {face = DOWN;}
	    if yspd < 0 {face = UP;}
	}

	sprite_index = sprite[face];

	// animations, kinda confusing...

	if xspd == 0 && yspd == 0
	{
	    image_index = 0;
	    image_speed = 0;
	}
	else
	{
	    image_speed = 1; // the default one (this is given for better understanding of the code)
	    if (run_key) image_speed = 2; // Faster one, it sped up nimaton
	
	}
}
>>>>>>> 5da5967 (title screen update yay)
