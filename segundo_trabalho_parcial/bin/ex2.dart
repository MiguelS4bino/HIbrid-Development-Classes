/*
Desenvolva um programa que, a partir do preço e do código de origem de um produto, calcule e exiba o valor do desconto concedido. As regras de desconto são as seguintes:
Código 1 – Região Norte: 5% de desconto.
Código 2 – Região Sul: 15% de desconto.
Código 3 – Região Sudeste: 7% de desconto.
Código 4 – Região Nordeste: 12% de desconto.
Código 5 – Região Centro-Oeste: 20% de desconto.

Se o código informado não for válido, o produto será considerado importado, e nenhum desconto será aplicado. O programa deve ler o preço e o código de origem, calcular o desconto (se aplicável) e exibir o valor final do produto.
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Insira o preço do produto: ");
  double? price = double.tryParse(stdin.readLineSync()!) ?? 0.0;
  stdout.write("\n-Codigo 1 - Norte\n-Codigo 2 - Sul\n-Codigo 3 - Sudeste\n-Codigo 4 - Nordeste\n-Codigo 5 - Centro-Oeste\nInsira o código de origem(não insira nada para importados): ");
  int? cod = int.tryParse(stdin.readLineSync()!) ?? 0;

  double discount = 0.0;
  switch(cod){
    case 1:
      discount = 0.05;
      break;
    case 2:
      discount = 0.15;
      break;
    case 3:
      discount = 0.07;
      break;
    case 4:
      discount = 0.12;
      break;
    case 5:
      discount = 0.2;
      break;
    default:
      stdout.write("Produto identificado como importado.");
      break;
  }

  double totalPrice = price - ( price * discount );
  stdout.write("O preço total do seu produto é: $totalPrice \n");
}