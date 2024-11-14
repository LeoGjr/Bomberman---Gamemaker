/// @description Insert description here
// You can write your code in this editor

if(room == rm_level)
{
	if(pause && pausar)
	{
		var w = sprite_get_width(spr_pause);
		var h = sprite_get_height(spr_pause);

		var posx = view_get_wport(view_camera[0]) / 2;
		var posy = view_get_hport(view_camera[0]) / 2;

		draw_sprite_pos(spr_pause, 0, posx - xxx, posy - yyy, posx + xxx, posy - yyy, posx + xxx, posy + yyy, posx - xxx, posy + yyy, 1);
		
		xxx = lerp(xxx, w/2, .1);
		yyy = lerp(yyy, h/2, .4);
		
		if(yyy < h)
		{
			draw_set_font(fnt_inicio);
			
			if(keyboard_check_pressed(vk_up))
			{
				if(pause_s > 0)
				{
					pause_s--;
				}
				else pause_s = array_length_1d(opcoes_p)-1;
				var snd = audio_play_sound(snd_sel, 5, false);
				audio_sound_pitch(snd, .5);
			}
			
			if(keyboard_check_pressed(vk_down))
			{
				if(pause_s < array_length_1d(opcoes_p)-1) pause_s++;
				else pause_s = 0;
				var snd = audio_play_sound(snd_sel, 5, false);
				audio_sound_pitch(snd, .5);
			}
			
			if(keyboard_check_pressed(vk_enter))
			{
				switch(pause_s)
				{
					case 0:
						pause = !pause;
						pause_s = 0;
						break;
					
					case 1:
						pause = !pause;
						pause_s = 0;
						room_restart();
						break;
					
					case 2:
						pause = !pause;
						pause_s = 0;
						pausar = false;
						var trans = instance_create_layer(0, 0, "Tran", obj_tran);
						trans.destino = rm_inicio;
						break;
				}
			}
			
			var c1 = c_white;
			var c2 = c_black;
			var esp = 0;
		
			for(var i = 0; i < array_length_1d(opcoes_p); i++)
			{
				var sep = string_height(opcoes_p[0]);
				
				if(pause_s == i)
				{
					c1 = c_red;
					esp = 5;
				}
				else
				{
					c1 = c_white;
					esp = 0;
				}
			
				draw_set_color(c2);
				draw_text(posx / 1.3 + 2 + esp, posy + h / 1.5 + i * sep + 2, opcoes_p[i]);
			
				draw_set_color(c1);
				draw_text(posx / 1.3 + esp, posy + h / 1.5 + i * sep , opcoes_p[i]);
			}
		}
		
		draw_set_color(c_white);
		draw_set_font(-1);
	}
}

