import 'dart:io';


//Converter Metros para Centímetros
void main(){
  stdout.write("Bem vindo ao conversor de Metros para Cm.");
  stdout.write("\nInsira o valor em metros: ");
  double? meterValue = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double inCmValue = meterValue * 100;
  stdout.write("\nEm Metros: $meterValue \nEm centímetros: $inCmValue\n");
}