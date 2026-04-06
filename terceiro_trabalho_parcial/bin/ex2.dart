/*
2) Somatório de 1 a N
Leia um inteiro N e calcule a soma de 1 até N usando um laço for. Ao final, mostre o resultado.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite N: ");
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;

  int cont = 0;
  for(int i = 1; i <= n; i++){
    cont += i;
    stdout.write("$cont \n");
  }
}