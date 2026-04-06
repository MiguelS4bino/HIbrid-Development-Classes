/*
3) Contar múltiplos
Leia dois inteiros N e k. Conte quantos números no intervalo 1..N (inclusive) são múltiplos de k e exiba a quantidade.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite N: ");
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;

  stdout.write("Digite K: ");
  int k = int.tryParse(stdin.readLineSync()!) ?? 0;

  int cont = 0;
  for(int i=1; i <= n; i++){
    if(i%k == 0){
      cont++;
    }
  }

  stdout.write("\n$cont números são múltiplos de '$k' de 1 á $n\n");
}