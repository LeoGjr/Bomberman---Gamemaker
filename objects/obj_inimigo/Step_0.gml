/// @description Insert description here
// You can write your code in this editor
if(!morto)
{
	if(round(x) mod grid_size == 0 && round(y) mod grid_size == 0)
	{
		
		var cha = irandom(100);
		
		if(cha > 50)
		{
			if(velv == 0)
			{
				if(!place_meeting(x, y - grid_size, obj_bloco))
				{
					velh = 0;
					velv = -vel;
				}
				else if(!place_meeting(x, y + grid_size, obj_bloco))
				{
					velh = 0;
					velv = vel;
				}
			}
			else
			{
				if(!place_meeting(x + grid_size, y, obj_bloco))
				{
					velv = 0;
					velh = vel;
				}
				else if(!place_meeting(x - grid_size, y, obj_bloco))
				{
					velv = 0;
					velh = -vel;
				}
			}
		}
		
		
		if(velh != 0 && velv != 0)
		{
			velv = 0;
		}
	
		
	
		if(place_meeting(x + sign(velh) * grid_size, y, obj_bomba))
		{
			velh *= -1;
		}
	
		if(place_meeting(x, y + sign(velv) * grid_size, obj_bomba))
		{
			velv *= -1;
		}
		
		
		
		if(place_meeting(x + sign(velh) * grid_size, y, obj_inimigo))
		{
			velh *= -1;
		}
	
		if(place_meeting(x, y + sign(velv) * grid_size, obj_inimigo))
		{
			velv *= -1;
		}
		
		
		if(place_meeting(x + sign(velh) * grid_size, y, obj_bloco))
		{
			velh *= -1;
		}
	
		if(place_meeting(x, y + sign(velv) * grid_size, obj_bloco))
		{
			velv *= -1;
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
	
		if(velh > 0) sprite_index = spr_inimigo_right;
		if(velv < 0) sprite_index = spr_inimigo_up;
		if(velh < 0) sprite_index = spr_inimigo_left;
		if(velv > 0) sprite_index = spr_inimigo_down;
	}

	if(vel > .5) vel = .5;

	x += velh;
	y += velv;
}
else
{
	image_speed = 0;
	image_blend = c_red;
	
	alpha = lerp(alpha, .1, .1);
	image_alpha = alpha;
	
	if(avisar)
	{
		alarm[0] = room_speed * 3;
		avisar = false;
	}
}


var player_pai = instance_place(x, y, obj_player_pai);

if(player_pai)
{
	player_pai.morto = true;
}

if(place_meeting(x, y, obj_explosion)) morto = true;