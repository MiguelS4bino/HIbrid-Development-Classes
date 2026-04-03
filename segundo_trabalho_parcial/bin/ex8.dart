/*
Uma companhia de energia cobra de acordo com o consumo mensal (em kWh):
Até 100 kWh: R$ 0,80 por kWh
De 101 a 300 kWh: R$ 1,10 por kWh
De 301 a 500 kWh: R$ 1,40 por kWh
Acima de 500 kWh: R$ 1,80 por kWh

Além disso, se o consumo ultrapassar 400 kWh, há uma taxa extra de 10% sobre o valor total. O programa deve ler o consumo em kWh e exibir:
Consumo mensal
Valor base da conta
Taxa extra (se aplicável)
Valor total da conta
*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Digite o consumo mensal de energia(em kWh): ");
  int? kWh = int.tryParse(stdin.readLineSync()!) ?? 0;

  if(kWh <= 0){
    stdout.write("Sem gastos.");
  }

  double kWhValue = 0.0;
  double tax = 0.0;
  if(kWh <= 100){
    kWhValue = 0.80;
  } else if(kWh <= 300){
    kWhValue = 1.10;
  } else if(kWh <= 500){
    kWhValue = 1.40;
    if(kWhValue > 400){
      tax = 0.1;
    }
  } else {
    kWhValue = 1.80;
    tax = 0.1;
  }

  double taxValue = (kWh * kWhValue) * tax;
  double totalConsume = (kWhValue * kWh) + taxValue;

  stdout.write("Consumo mensal: $kWh");
  stdout.write("Custo base: $kWhValue");
  stdout.write("Taxa extra: $tax");
  stdout.write("Valor total: $totalConsume");
}