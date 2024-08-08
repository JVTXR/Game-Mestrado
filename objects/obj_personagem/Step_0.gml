//definindo teclas do teclado para a movimentação
var tecla_cima = keyboard_check(ord("W"));
var tecla_baixo = keyboard_check(ord("S"));
var tecla_esquerda = keyboard_check(ord("A"));
var tecla_direita = keyboard_check(ord("D"));

//variavel que verifica se a tecla esta sendo apertada
var tecla = tecla_direita - tecla_esquerda !=0 || tecla_baixo - tecla_cima != 0;

//trabalhando com teclas para a movimentação
dir = point_direction(0, 0, tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);

//movendo a velocidade nas direcoes certas. a variavel veloc e multiplicada por 0 para evitar que o personagem ande sozinho
velh = lengthdir_x(veloc * tecla, dir);
velv = lengthdir_y(veloc *tecla, dir);

//indicando que o X e o Y seguem a velh e a velv 
x+= velh;
y+= velv;