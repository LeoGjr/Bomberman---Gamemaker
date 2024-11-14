/// @description Insert description here
// You can write your code in this editor

if(room == rm_level)
{
	if!(instance_exists(obj_mapa))
	{
		instance_create_layer(0, 0, "instances", obj_mapa);
	}
	
	if(musica == 0)
	{
		musica = audio_play_sound(snd_musica, 3, true);
	}
}
else
{
	if(musica != 0)
	{
		audio_stop_all();
		musica = 0;
	}
}
escolha = false;
sel = 0;
pausar = true;