import 'dart:io';

//Calculo rendimento de um táxi
void main(){
  stdout.write("Bem vindo ao 'Calculo rendimento de um táxi'\n");
  
  stdout.write("Informe quantos Km o hodômetro marcava no inicio do dia: ");
  double? startKm = double.tryParse(stdin.readLineSync()!) ?? 0;
  stdout.write("\nInforme quantos Km o hodômetro marcava no final do dia: ");
  double? finalKm = double.tryParse(stdin.readLineSync()!) ?? 0;
  
  stdout.write("\nInforme quantos litros de gasolina foi gasta(considerando 6,50/l): ");
  double? gasLiters = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write("\nInforme o valor total recebido dos passageiros: ");
  double? gainValue = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  if (gasLiters == 0) {
    print("\nErro: litros de gasolina não pode ser 0.");
    return;
  }

  if (finalKm < startKm) {
    print("\nErro: Km final não pode ser menor que o inicial.");
    return;
  }

  double kmPerLiters = (finalKm - startKm) / gasLiters;
  double profit = gainValue - (gasLiters * 6.50);

  stdout.write("\nMédia de consumo de combustível (em Km/L): $kmPerLiters");
  stdout.write("\nLucro líquido do dia: $profit");
}