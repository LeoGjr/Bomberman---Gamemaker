// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_converte_tecla(){
	var tecla = argument0;
	var txt = "";
	
	switch(tecla)
	{
		case vk_up: txt = "UP"; break;
		case vk_down: txt = "DOWN"; break;
		case vk_left: txt = "LEVEL"; break;
		case vk_right: txt = "RIGHT"; break;
		case vk_space: txt = "SPACE"; break;
		
		case ord("A"): txt = "A"; break;
		case ord("S"): txt = "S"; break;
		case ord("D"): txt = "D"; break;
		case ord("W"): txt = "W"; break;
		case ord("J"): txt = "J"; break;
		
		case 0: txt = "Nulo"; break;
		default: txt = "Nulo"; break;
	}
	
	return txt;
}