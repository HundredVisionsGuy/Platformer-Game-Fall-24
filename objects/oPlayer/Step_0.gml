/// @description Insert description here
// You can write your code in this editor

// Get left, right, and jump keys
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_up);

var _move = key_right - key_left;

hsp = _move * walksp;

// gravity
vsp = vsp + grv;

x = x + hsp;


// vertical collision - if in the next loop we were to collide with a wall
//						move in the direction of the wall until we're just
//						about to hit, then stop
if (place_meeting(x, y+vsp, oWall))
{
	// repeat moving 1 pixel at a time towards the wall
	while ( !place_meeting(x, y+sign(vsp), oWall))
	{
		// move vertical by 1 pixel
		y = y + sign(vsp);
	}
	// as soon as we are 1 pixel away from a collision, stop
	vsp = 0;
}

y = y + vsp;