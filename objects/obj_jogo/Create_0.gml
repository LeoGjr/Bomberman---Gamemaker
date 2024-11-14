/// @description Insert description here
// You can write your code in this editor

opcoes = ["1 Player", "2 Players", "3 Players", "4 Players", "Controles", "Fechar"];
cor = c_white;
cor2 = c_black;
sel = 0;
espaco = 0;
escolha = false;
global.jogadores = [true, false, false, false];


enum players
{
	p1, p2, p3, p4
}
enum p_control
{
	up, down, left, right, bomb
}

global.controles_players = ds_grid_create(4, 5);

ds_grid_clear(global.controles_players, 0);


scr_insere_control(players.p1, vk_up, vk_down, vk_left, vk_right, vk_space);

scr_insere_control(players.p2, ord("W"), ord("S"), ord("A"), ord("D"), ord("J"));



opcoes2 = ["1 Player", "2 Player", "3 Player", "4 Player"];
topo = true;
sel_p = 0;

opcoes3 = ["UP", "DOWN", "LEFT", "RIGHT", "BOMB", "OK"];
sel_c = 0;
escolha_t = false;
teclas = [0, 0, 0, 0, 0, 0];
cor3 = c_white;

pause = false;

surf = 0;

opcoes_p = ["Voltar", "Reiniciar", "Sair"];

xxx = 0;
yyy = 50000;
pause_s = 0;
pausar = true;


musica = 0;