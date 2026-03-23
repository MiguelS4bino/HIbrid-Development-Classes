import 'dart:io';

void main() {
  stdout.write('Qual a sua nota da prova?: ');
  String? valor1 = stdin.readLineSync();
  double? prova = double.tryParse(valor1!) ?? 0.0;

  stdout.write('Qual a nota do trabalho?:');
  double? trabalho = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double? media = prova * 0.6 + trabalho * 0.4;

  stdout.write('Sua média será: $media\n');
}
