/*
6) Ler até a palavra “sair”
Leia palavras (strings) repetidamente até o usuário digitar sair.
Ao final, mostre quantas palavras foram digitadas (não contar sair).
*/

import 'dart:io';

void main(List<String> args) {
  String word = "";
  int wordCount = 0;

  while (word.toLowerCase() != "sair") {
    stdout.write("\nDigite uma palavra(digite 'Sair' para parar): ");
    word = stdin.readLineSync()!;

    if(word.toLowerCase() == "sair"){
      break;
    }

    wordCount++;
  }

  stdout.write("Quantidade de palavras digitadas: $wordCount\n");
}