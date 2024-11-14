/// @description Insert description here
// You can write your code in this editor
randomize();
grid = 32;

numero_de_jogadores = 0;

for(var i = 0; i < array_length_1d(global.jogadores); i++)
{
	if(global.jogadores[i]) numero_de_jogadores++;
}

var tam = irandom_range(16, 24);
room_width = tam * grid;
room_height = tam * grid;

camera_set_view_size(view_camera[0], room_width, room_height);

var col = room_width div grid;
var lin = room_height div grid;

for(var i = 0; i < col; i++)
{
	for(var j = 0; j < lin; j++)
	{		
		var player_1 = !((i == 1 && j == 1) or (i == 2 && j == 1) or (i == 1 && j == 2));
		
		var player_2 = !((j == 1 && i == col - 2) or (j == 1 && i == col - 3) or (j == 2 && i == col - 2));
		
		var player_3 = !((i == 1 && j == lin - 2) or (i == 1 && j == lin - 3) or (i == 2 && j == lin - 2));
		
		var player_4 = !((j == lin - 2 && i == lin - 2) or (j == lin - 2 && i == col - 3) or (j == lin - 3 && i == col - 2));
		
		var posso = (player_1 && player_2 && player_3 && player_4);
		var parede = (i == 0 or j == 0 or i == col-1 or j == lin-1);
		var meio = (i mod 1.5 == 0 && j mod 1.5 == 0 && i != col - 2 && j != lin - 2);
		
		if(parede or meio && posso)
		{
			var block = instance_create_layer(i * grid, j * grid, "Level", obj_bloco);
			block.destroi = false;
		}
		else
		{
			if(posso)
			{
				var ale = irandom(100);
				if(ale > 30)
				{
					var block = instance_create_layer(i * grid, j * grid, "Level", obj_bloco);
				}
				
			}
		}			
	}
}

var player_1 = instance_create_layer(1 * grid, 1 * grid, "Player", obj_player_1);
scr_define_control(player_1, players.p1);

if(global.jogadores[1])
{
	var player_2 = instance_create_layer((col-2) * grid, (lin-2) * grid, "Player", obj_player_2);
	scr_define_control(player_2, players.p2);			
}
		
if(global.jogadores[2])
{
	var player_3 = instance_create_layer((col-2) * grid, 1 * grid, "Player", obj_player_3);
	scr_define_control(player_3, players.p3);
}
		
if(global.jogadores[3])
{
	var player_4 = instance_create_layer(1 * grid, (lin-2) * grid, "Player", obj_player_4);
	scr_define_control(player_4, players.p4);		
}


var n_inimigo = irandom_range(2, 5);

if(global.jogadores[1] == false)
{
	for(var i = 3; i < col - 3; i++)
	{
		for(var j = 3; j < lin - 3; j++)
		{
			if(n_inimigo > 0)
			{
				var cha = irandom(100);
				if(cha > 90)
				{
					if(position_empty(i * grid, j * grid))
					{
						instance_create_layer(i * grid, j * grid, "level", obj_inimigo);
						n_inimigo--;
					}
				}
			}
		}
	}
}