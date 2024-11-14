// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_define_control(){
	var player = argument0;
	var n_player = argument1;
	
	for(var i = 0; i < 5; i++)
	{
		player.controles[i] = global.controles_players[# n_player, i];
	}
}