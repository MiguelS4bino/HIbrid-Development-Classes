/*
9) Confirmar ação
Pergunte ao usuário: “Deseja continuar? (s/n)”.
Leia a resposta e trate as opções informadas.
*/

import 'dart:io';

void main(List<String> args) {
  String option;
  
  do{
    stdout.write("\nDeseja continuar?(S/N): ");
    option = stdin.readLineSync()!;

  }while(option.toLowerCase()!="n");
}