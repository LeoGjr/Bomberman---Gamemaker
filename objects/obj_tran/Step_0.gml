/// @description Insert description here
// You can write your code in this editor


if(!escuro)
{
	alpha += .02;
}
else
{
	alpha -= .02;
}

if(alpha >= 1 && !escuro)
{
	room_goto(destino);
}