/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

// variaveis de movimentação
direita = keyboard_check(ord("D"));
cima = keyboard_check(ord("S"));
esquerda = keyboard_check(ord("A"));
baixo = keyboard_check(ord("W"));

hveloc = (direita - esquerda)* veloc;

if place_meeting(x + hveloc, y, Obj_cerca){
	while !place_meeting(x + sign (hveloc), y, Obj_cerca){
		x += sign(hveloc);
	}
	
	hveloc = 0;
}

x += hveloc;

vveloc = (cima - baixo)* veloc;

if place_meeting(x, y + vveloc, Obj_cerca){
	while !place_meeting(x, y + sign(vveloc), Obj_cerca){
		y += sign(vveloc);
	}
	
	vveloc = 0;	
}

y += vveloc;


//mudar as sprites
dir = floor((point_direction(x, y, mouse_x, mouse_y) +45)/90);

if hveloc == 0 and vveloc == 0{
switch dir{
	default:
		sprite_index = spr_personagem_parado_direita;
	break;
	case 1:
		sprite_index = spr_personagem_parado_cima
	break;
	case 2:
		sprite_index = spr_personagem_parado_esquerda
	break;
	case 3:
		sprite_index = spr_personagem_parado_baixo	
	break;
	}
}else{
	switch dir{
	default:
		sprite_index = spr_personagem_correndo_direita;
	break;
	case 1:
		sprite_index = spr_personagem_correndo_cima
	break;
	case 2:
		sprite_index = spr_personagem_correndo_esquerda
	break;
	case 3:
		sprite_index = spr_personagem_correndo_baixo	
	break;
	}
}