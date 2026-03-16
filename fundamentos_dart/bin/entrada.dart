import 'dart:io';

void main(){
  stdout.write("Qual seu nome?: ");
  String? name = stdin.readLineSync();

  stdout.write("Boa Taarde $name");
}