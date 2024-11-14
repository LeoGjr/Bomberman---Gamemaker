/// @description Insert description here
// You can write your code in this editor

grid_size = 32;

morto = false;


vel = .5;

velh = 0;
velv = 0;
alpha = 1;
face = 0;
avisar = true;

if(!place_meeting(x + grid_size, y, obj_bloco))
{
	velh = vel;
}

else if(!place_meeting(x - grid_size, y, obj_bloco))
{
	velh = -vel;
}
else if(!place_meeting(x, y + grid_size, obj_bloco))
{
	velv = vel;
}
else if(!place_meeting(x, y - grid_size, obj_bloco))
{
	velv = -vel;
}