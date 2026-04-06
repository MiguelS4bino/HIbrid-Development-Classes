import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite N: ");
  int n = int.tryParse(stdin.readLineSync()!) ?? 0;

  for(int i = n; i >= 0; i--){
    stdout.write("$i \n");
  }
}