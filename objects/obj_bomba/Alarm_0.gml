/// @description Insert description here
// You can write your code in this editor

var expl = instance_create_layer(x, y, "Efeitos", obj_explosion);
expl.mae = true;
expl.potencia = potencia;



instance_destroy();
if(pai != noone) pai.bombas++;
