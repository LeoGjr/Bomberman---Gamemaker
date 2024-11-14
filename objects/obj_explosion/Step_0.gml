/// @description Insert description here
// You can write your code in this editor


if(image_index > image_number - 1) instance_destroy();

var col_b = instance_place(x, y, obj_bomba);
if(col_b)
{
	if(col_b.alarm[0] >= 2)
	{
		col_b.alarm[0] = 1;
	}
}

var col = instance_place(x, y, obj_bloco);

if(col)
{
	if(col.destroi)
	{
		instance_destroy(col);
		instance_destroy();
	}
	else
	{
		instance_destroy();
		part = false;
	}
}

var player = instance_place(x, y, obj_player_pai);
if(player) player.morto = true;

if(part)
{
	part_emitter_region(global.part_sys, global.em, x + sprite_width/2, x + sprite_width/2, y + sprite_width/2, y + sprite_width/2, 0, 0);
	part_emitter_burst(global.part_sys, global.em, global.particula, 2);
}
