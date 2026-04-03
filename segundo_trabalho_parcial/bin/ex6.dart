/*
Uma lanchonete está enfrentando dificuldades para atender certos pedidos devido a restrições em algumas combinações do cardápio. As regras são as seguintes:
O lanche Bauru não pode ser acompanhado de Guaraná.
Se o cliente escolher X-Frango, não poderá pedir Água.
Ao pedir Pizza, as únicas bebidas permitidas são Vinho ou Água.

Com base nessas restrições, desenvolva um programa que leia o lanche e a bebida escolhidos pelo cliente e determine se o pedido pode ou não ser atendido.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("1- Bauru\n2- X-Frango\n3- Pizza\n");
  int? food = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("1- Agua\n2- Guaraná\n3- Vinho\n");
  int? drink = int.tryParse(stdin.readLineSync()!) ?? 0;

  if(food == 0 || drink == 0){
    stdout.write("!! Código(s) inválidos !!");
    return;
  }

  bool canServe = false; 
  switch(food){
    case 1:
      if(drink == 2){
        stdout.write("Bauru não pode ser servido com Guaraná!\n");
        stdout.write("Não podemos atendê-lo.\n");
        return;
      }
      canServe = true;
      break;

    case 2:
      if(drink == 1){
        stdout.write("X-Frango não pode ser servido com Água!\n");
        stdout.write("Não podemos atendê-lo.\n");
        return;
      }
      canServe = true;
      break;
    
    case 3:
      if(drink == 2){
        stdout.write("Pizza não pode ser servida com Guaraná!\n");
        stdout.write("Não podemos atendê-lo.\n");
        return;
      }
      canServe = true;
      break;
       
    default:
      stdout.write("!! Código(s) inválidos !!\n");
      return;
  }
  if(canServe){
    stdout.write("Podemos atendê-lo.\n");
  }
}