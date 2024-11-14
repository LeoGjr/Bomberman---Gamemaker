/// @description Insert description here
// You can write your code in this editor

if(room == rm_inicio)
{
	var n = array_length_1d(opcoes);
	var h = string_height(opcoes[0]) * 1.5;
	
	if(keyboard_check_pressed(vk_up))
	{
		if(sel > 0) sel--;
		else sel = n-1;
		var snd = audio_play_sound(snd_sel, 5, false);
		audio_sound_pitch(snd, 5);
	}
	if(keyboard_check_pressed(vk_down))
	{
		if(sel < n-1) sel++;
		else sel = 0;
		var snd = audio_play_sound(snd_sel, 5, false);
		audio_sound_pitch(snd, 5);
	}
	
	
	
	for(var i = 0; i < n; i++)
	{
		
		if(sel == i)
		{
			cor = c_red;
			cor2 = c_green;
			espaco = -5;
		}
		else
		{
			cor = c_white;
			cor2 = c_black;
			espaco = 0;
		}
		
		
		draw_set_font(fnt_inicio);
		draw_set_halign(fa_left);
		
		draw_set_color(cor2);
		draw_text(room_width / 2.5 + 2 + espaco, room_height / 2 + 2 + i * h, opcoes[i]);
		
		draw_set_color(cor);
		draw_text(room_width / 2.5 + espaco, room_height / 2 + i * h, opcoes[i]);
	}
}

if(room == rm_control)
{
	draw_set_font(fnt_inicio);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(cor2);
	
	var n = array_length_1d(opcoes2);
	var n2 = array_length_1d(teclas);
	
	if(topo)
	{
		if(keyboard_check_pressed(vk_left))
		{
			if(sel_p > 0) sel_p--;
			else sel_p = n-1;
			var snd = audio_play_sound(snd_sel, 5, false);
			audio_sound_pitch(snd, 3);
		}
		
		if(keyboard_check_pressed(vk_right))
		{
			if(sel_p < n-1) sel_p++;
			else sel_p = 0;
			var snd = audio_play_sound(snd_sel, 5, false);
			audio_sound_pitch(snd, 3);
		}
		
		if(keyboard_check_pressed(vk_enter))
		{
			topo = false;
		
			for(var i = 0; i < n2-1; i++)
			{
				opcoes3[i] = scr_converte_tecla(global.controles_players[# sel_p, i]);
				teclas[i] = global.controles_players[# sel_p, i];
			}
			escolha_t = false;
		}
	}
	else
	{
		if(!escolha_t)
		{
			if(keyboard_check_pressed(vk_up))
			{
				if(sel_c > 0) sel_c--;
				else sel_c = n2-1;
				var snd = audio_play_sound(snd_sel, 5, false);
				audio_sound_pitch(snd, 2);
			}
			if(keyboard_check_pressed(vk_down))
			{
				if(sel_c < n2-1) sel_c++;
				else sel_c = 0;
				var snd = audio_play_sound(snd_sel, 5, false);
				audio_sound_pitch(snd, 2);
			}
			
			if(keyboard_check_pressed(vk_enter))
			{
				if(sel_c < n2-1)
				{
					escolha_t = true;
				}
				else
				{
					for(var i = 0; i < n2 - 1; i++)
					{
						global.controles_players[# sel_p, i] = teclas[i];
					}
					teclas = [0, 0, 0, 0, 0, 0];
					topo = true;
					sel_c = 0;
					sel_p = 0;
					
					var trans = instance_create_layer(0, 0, "Tran", obj_tran);
					trans.destino = rm_inicio;
				}
			}
			
			if(keyboard_check_pressed(vk_escape))
			{
				for(var i = 0; i < n2 - 1; i++)
				{
					global.controles_players[# sel_p, i] = teclas[i];
				}
				teclas = [0, 0, 0, 0, 0, 0];
				topo = true;
				sel_c = 0;
				sel_p = 0;
			}
		}
		else
		{
			var k_atual = 0;
			k_atual = keyboard_key;
			
			if(k_atual != 0 && k_atual != vk_enter)
			{
				opcoes3[sel_c] = scr_converte_tecla(k_atual);
				teclas[sel_c] = k_atual;
				escolha_t = false;
			}
		}
		
		for(var i = 0; i < n2; i++)
		{
			if(sel_c == i)
			{
				if(escolha_t) cor3 = c_green;
				else cor3 = c_red;
			}
			else
			{
				cor3 = c_black;
			}
			
			draw_set_color(cor3);
			draw_text(260, 155 + i * 60, opcoes3[i]);
			
			draw_set_color(c_white);
		}
		
	}
	
	draw_text(130, 72, opcoes2[sel_p]);
	
}

if(room == rm_level)
{
	if(pause)
	{
		if!(surface_exists(surf))
		{
			surf = surface_create(view_get_wport(view_camera[0]), view_get_hport(view_camera[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black, 0);
			surface_reset_target();
		}
		else
		{
			draw_surface_stretched(surf, 0, 0, room_width, room_height);
			
			draw_set_alpha(.5);
			draw_set_color(c_black);
			draw_rectangle(0, 0, room_width, room_height, false);
			draw_set_alpha(1);
			draw_set_color(c_white);
		}
	}
}