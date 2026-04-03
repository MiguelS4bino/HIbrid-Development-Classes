/*
Uma lanchonete oferece o seguinte cardápio:
Lanche
Código
Valor (R$)
Cachorro Quente
101
14,20
Bauru Simples
102
12,30
Bauru com Ovo
103
13,50
Hambúrguer
104
10,20
Cheeseburger
105
15,30
Refrigerante
106
10,00


Desenvolva um programa que leia o código do item pedido e a quantidade desejada. O programa deve calcular e exibir o valor total a ser pago pelo cliente. Caso seja informado um código que não esteja na lista, o sistema deve exibir a mensagem "Código do lanche inválido".
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("╔══════════════════════════════════╗\n"
    "║          🍔 CARDÁPIO 🍟         ║\n"
    "╠══════════════════════════════════╣\n"
    "║ Código │ Lanche           │ Preço║\n"
    "╠══════════════════════════════════╣\n"
    "║ 101    │ Cachorro Quente  │ 14,20║\n"
    "║ 102    │ Bauru Simples    │ 12,30║\n"
    "║ 103    │ Bauru com Ovo    │ 13,50║\n"
    "║ 104    │ Hambúrguer       │ 10,20║\n"
    "║ 105    │ Cheeseburger     │ 15,30║\n"
    "║ 106    │ Refrigerante     │ 10,00║\n"
    "╠══════════════════════════════════╣\n"
    "║     Escolha pelo código          ║\n"
    "╚══════════════════════════════════╝\n"
    );
  stdout.write("Digite o código: ");
  int? cod = int.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("Qual a quantidade que deseja: ");
  int? quantity = int.tryParse(stdin.readLineSync()!) ?? 0;

  double price = 0.0;
  switch(cod){
    case 101:
      price = 14.20;
      break;
    case 102:
      price = 12.30;
      break;
    case 103:
      price = 13.50;
      break;
    case 104:
      price = 10.20;
      break;
    case 105:
      price = 15.30;
      break;
    case 106:
      price = 11.00;
      break;
    default:
      stdout.write("!! Escolha um item válido !!\n");
      return;
  }

  double total = quantity * price;
  stdout.write("O total de seu pedido: $total reais\n");
}