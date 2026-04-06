/*
5) Contar pares e ímpares
Leia inteiros até que o usuário digite 0.
Ao final, informe quantos números foram pares e quantos foram ímpares (não contar o 0).
*/

import 'dart:io';

void main(List<String> args) {
  int? num;
  int pair = 0;
  int odd = 0;

  while (num != 0) {
    stdout.write("\nDigite um número(0 para parar): ");
    num = int.tryParse(stdin.readLineSync()!) ?? 0;

    if(num != 0){
      if(num%2 == 0){
        pair++;
      } else {
        odd++;
      }
    }
  }

  stdout.write("Números pares: $pair\nNúmeros ímpares: $odd\n");
}