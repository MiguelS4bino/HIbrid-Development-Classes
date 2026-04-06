/*
8) Validação de entrada (nota)
Solicite ao usuário uma nota entre 0 e 10.
Enquanto a nota informada estiver fora do intervalo, solicite novamente. Ao final, exiba a nota válida.
*/

import 'dart:io';

void main(List<String> args) {
  int nota;

  do{
    stdout.write("\nDigite a nota(0 a 10): ");
    nota = int.tryParse(stdin.readLineSync()!) ?? 0;

    if(nota>=0 && nota <= 10){
      stdout.write("\nSua nota é: $nota\n");
      break;
    }

    stdout.write("\nDigite uma nota válida.\n");
  } while (!(nota>=0 && nota <= 10));
}