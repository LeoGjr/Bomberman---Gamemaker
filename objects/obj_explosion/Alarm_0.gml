/// @description Insert description here
// You can write your code in this editor


if(mae)
{
	
	var snd = audio_play_sound(snd_explo, 5, false);
	audio_sound_pitch(snd, random_range(.5, 2));
	
	if(potencia > 0)
	{
		potencia--;
		repeat(4)
		{
			var xx = lengthdir_x(grid_size, dir);
			var yy = lengthdir_y(grid_size, dir);
			
			var col = instance_place(x + sign(xx), y + sign(yy), obj_bloco);
			if(col)
			{
				if(col.destroi)
				{
					instance_destroy(col);
				
					var filha = instance_create_layer(x + xx, y + yy, "Efeitos", obj_explosion);
					filha.mae = false;
					filha.dir = dir;
					filha.potencia = potencia;
				}
			}
			else
			{
				var filha = instance_create_layer(x + xx, y + yy, "Efeitos", obj_explosion);
				filha.mae = false;
				filha.dir = dir;
				filha.potencia = potencia;
			}
			
			
			dir += 90;
		}
	}
}
else
{
	if(potencia > 0)
	{
		potencia--;
		var xx = lengthdir_x(grid_size, dir);
		var yy = lengthdir_y(grid_size, dir);
		
		var col = instance_place(x + sign(xx), y + sign(yy), obj_bloco);
		if(col)
		{
			if(col.destroi)
			{
				instance_destroy(col);
				
				var filha = instance_create_layer(x + xx, y + yy, "Efeitos", obj_explosion);
				filha.mae = false;
				filha.dir = dir;
				filha.potencia = potencia;
			}
		}
		else
		{
			var filha = instance_create_layer(x + xx, y + yy, "Efeitos", obj_explosion);
			filha.mae = false;
		
			filha.dir = dir;
			filha.potencia = potencia;
		}	
	}
}