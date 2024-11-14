/// @description Insert description here
// You can write your code in this editor

if(room == rm_inicio)
{
	var enter = keyboard_check_released(vk_enter);

	if(enter && !escolha)
	{
		escolha = true;
		switch(sel)
		{
			case 0:
				global.jogadores = [true, false, false, false];
				var trans = instance_create_layer(0, 0, "Tran", obj_tran);
				trans.destino = rm_level;
			
				break;
			
			case 1:
				global.jogadores = [true, true, false, false];
				var trans = instance_create_layer(0, 0, "Tran", obj_tran);
				trans.destino = rm_level;
				break
			
			case 2:
				global.jogadores = [true, true, true, false];
				var trans = instance_create_layer(0, 0, "Tran", obj_tran);
				trans.destino = rm_level;
				break;
			
			case 3:
				global.jogadores = [true, true, true, true];
				var trans = instance_create_layer(0, 0, "Tran", obj_tran);
				trans.destino = rm_level;
				break;
			
			case 4:
				var trans = instance_create_layer(0, 0, "Tran", obj_tran);
				trans.destino = rm_control;
				break;
				
			case 5:
				game_end();
				break;
		}
	}
}
else if(room == rm_level)
{
	if(keyboard_check_pressed(vk_escape) && !pause && pausar)
	{
		pause = !pause;
	}
	
	if(pause)
	{
		
		if(musica != 0)
		{
			audio_sound_gain(musica, .1, room_speed * 2);
		}
		
		if(surf == 0)
		{
			surf = surface_create(view_get_wport(view_camera[0]), view_get_hport(view_camera[0]));
			surface_set_target(surf);
			draw_clear_alpha(c_black, 0);
			surface_copy(surf, 0, 0, application_surface);
			surface_reset_target();
		}
		
		
		instance_deactivate_all(true);
	}
	else
	{
		
		if(musica != 0)
		{
			audio_sound_gain(musica, 1, room_speed * 2);
		}
		
		if(surf != 0)
		{
			surface_free(surf);
			surf = 0;
		}
		
		
		instance_activate_all();
		
		xxx = 0;
		yyy = 50000;
	}
}