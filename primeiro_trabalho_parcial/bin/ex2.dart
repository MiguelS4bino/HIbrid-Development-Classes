import 'dart:io';

//Calcular salário de um funcionário por horas trabalhadas
void main(){
  stdout.write("Bem vindo á 'Cálculo de salário mensal por horas trabalhadas'\n");
  
  stdout.write("Insira o valor da hora: ");
  double? hourValue = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  
  stdout.write("Insira a quantidade de horas trabalhadas(inteiras no mês): ");
  int? hourQuantity = int.tryParse(stdin.readLineSync()!) ?? 0;
  
  double salary = hourValue * hourQuantity;
  stdout.write("\nSeu salário é aproximadamente: $salary\n");
}