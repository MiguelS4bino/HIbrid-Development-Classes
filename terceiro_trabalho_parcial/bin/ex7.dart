/*
Exercícios usando do..while
7) Menu de operações
Exiba um menu com as opções:
1 – Somar
2 – Subtrair
0 – Sair
O programa deve continuar exibindo o menu e lendo a opção do usuário até que ele escolha 0.
*/

import 'dart:io';

void main(List<String> args) {
  int? option;
  
  do{
    stdout.write("\nMenu de opções:\n1-Somar\n2-Subtrair\n0-Sair\n\nDigite: ");
    option = int.tryParse(stdin.readLineSync()!) ?? 0;

    if(option != 1 && option != 2 && option != 0){
      stdout.write("\nDigite uma opção válida!");
    }

  } while(option != 0);
}