/// @description Insert description here
// You can write your code in this editor

if(numero_de_jogadores <= 0)
{
	if(instance_exists(obj_jogo))
	{
		if(obj_jogo.pausar) obj_jogo.pause = true;
	}
}

var click = mouse_check_button_released(mb_left);

if(click)
{
	instance_create_layer((mouse_x div grid) * grid, (mouse_y div grid) * grid, "level", obj_inimigo);
}