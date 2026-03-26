import 'dart:io';

//Converter Celsius para Fahrenheit
void main(){
  stdout.write("Bem vindo ao convertor de Celsius para Fahrenheit.\n");
  stdout.write("Insira a temperatura(em Celsius): ");
  double? celsiusValue = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  double fahrenheitValue = (celsiusValue * 9/5) + 32;
  stdout.write("\nA temperatura em fahrenheit é: $fahrenheitValue\n");
}