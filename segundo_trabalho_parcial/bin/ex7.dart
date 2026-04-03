/*
Uma bomba de combustível cobra diferentes preços conforme o tipo:
Gasolina comum: R$ 6,50 por litro
Gasolina premium: R$ 7,80 por litro
Diesel: R$ 5,90 por litro
Álcool: R$ 4,20 por litro

O programa deve ler o tipo de combustível (1, 2, 3 ou 4) e a quantidade de litros desejada. Calcule e exiba:
Tipo de combustível escolhido
Quantidade de litros
Preço unitário
Valor total a pagar
Se o tipo de combustível for inválido, exiba: "Combustível inválido."
*/
import 'dart:io';

void main(List<String> args) {
  stdout.write("1-Gasolina comum: 6,50 por litro\n2-Gasolina Premium: 7,80 por litro \n3-Diesel: 5,90 por litro \n4-Alcool: 4,20 por litro\n");
  stdout.write("Tipo de Combustivel: ");
  int? fuel = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("Quantos litros deseja: ");
  int? liters = int.tryParse(stdin.readLineSync()!) ?? 0;

  double price = 0.0;
  switch(fuel){
    case 1:
      price = 6.50;
      break;
    case 2:
      price = 7.80;
      break;
    case 3:
      price = 5.90;
      break;
    case 4:
      price = 4.20;
      break;
    default:
      stdout.write("!! Combustível inválido !!\n");
      return;
  }

  double total = liters * price;
  stdout.write("\nQuantidade de litros: $liters reais\n");
  stdout.write("Preço do combustível $fuel: $price reais\n");
  stdout.write("Total a pagar: $total reais\n");
}
