/// @description Insert description here
// You can write your code in this editor
event_inherited();
/*
if(!morto)
{
	var up, down, left, right, bomba;

	bomba = keyboard_check_released(vk_space);

	if(bomba && bombas > 0)
	{
		var bomb = instance_create_layer((round(x) div grid_size) * grid_size, (round(y) div grid_size) * grid_size, "Level", obj_bomba);
		bomb.potencia = potencia;
		bombas--;
		bomb.pai = self;
	}

	if(round(x) mod grid_size == 0 && round(y) mod grid_size == 0)
	{
		up = keyboard_check(vk_up);
		right = keyboard_check(vk_right);
		left = keyboard_check(vk_left);
		down = keyboard_check(vk_down);
	
	
		if(right) face = 0;
		if(up) face = 1;
		if(left) face = 2;
		if(down) face = 3;

		velh = (right - left) * vel;
		velv = (down - up) * vel;
	
	
	
	
		if(velh != 0 && velv != 0)
		{
			velv = 0;
		}
	
		if(place_meeting(x + sign(velh) * grid_size, y, obj_bloco))
		{
			velh = 0
		}
	
		if(place_meeting(x, y + sign(velv) * grid_size, obj_bloco))
		{
			velv = 0
		}
	
		if(place_meeting(x + sign(velh) * grid_size, y, obj_bomba))
		{
			velh = 0
		}
	
		if(place_meeting(x, y + sign(velv) * grid_size, obj_bomba))
		{
			velv = 0
		}
	
		if(velh + velv == 0)
		{
			image_index = 0;
			image_speed = 0;
		}
		else
		{
			image_speed = 1;
		}
	
		if(face == 0) sprite_index = spr_player_dir;
		if(face == 1) sprite_index = spr_player_up;
		if(face == 2) sprite_index = spr_player_esq;
		if(face == 3) sprite_index = spr_player_down;
	}

	if(vel > 4) vel = 4;

	x += velh;
	y += velv;
}
else
{
	image_blend = c_red;
	
	alpha = lerp(alpha, .5, .01);
	image_alpha = alpha;
}
