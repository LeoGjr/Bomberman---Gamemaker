// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_insere_control(){
	var player = argument0;
	var con = [argument1, argument2, argument3, argument4, argument5];
	
	for(var i = 0; i < 5; i++)
	{
		global.controles_players[# player, i] = con[i];
	}
}