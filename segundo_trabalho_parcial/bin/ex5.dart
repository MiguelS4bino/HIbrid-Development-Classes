/*
Desenvolva um programa que calcule o imposto de renda de uma pessoa com base em seu salário mensal. As alíquotas são:
Salário até R$ 2.000,00: Isento (0% de imposto)
Salário de R$ 2.000,01 a R$ 5.000,00: 10% de imposto
Salário de R$ 5.000,01 a R$ 10.000,00: 15% de imposto
Salário acima de R$ 10.000,00: 20% de imposto

O programa deve ler o salário, calcular o valor do imposto e exibir:
Salário bruto
Valor do imposto
Salário líquido (após desconto)
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite seu salario(uso ponto no lugar de virgula): ");
  double? grossSalary = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  if (grossSalary < 0) {
    stdout.write("!! Salário inválido !!");
    return;
  }

  double tax = 0.0;
  if(grossSalary <= 2000){
    tax = 0.0;
  } else if(grossSalary <= 5000){
    tax = 0.1;    
  } else if(grossSalary <= 10000){
    tax = 0.15;
  } else{
    tax = 0.2;
  }

  double netSalary = grossSalary - (tax * grossSalary);
  stdout.write("\nSalário bruto: $grossSalary \n");
  stdout.write("\nImposto de renda: $tax \n");
  stdout.write("\nSalário liquido: $netSalary \n");
}