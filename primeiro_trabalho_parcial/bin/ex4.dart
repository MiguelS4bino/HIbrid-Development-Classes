import 'dart:io';

//Calcular rendimento de depósito na poupança
void main(){
  stdout.write("Bem vindo ao 'Calculo rendimento de depósito na poupança'\n");
  stdout.write("Insira o valor do depósito na poupança: ");
  double? depositValue = double.tryParse(stdin.readLineSync()!) ?? 0.0;

  stdout.write("Insira quanto meses deseja simular(0,5% ao mes): ");
  int? timeInSavings = int.tryParse(stdin.readLineSync()!) ?? 0;

  double incomeValue = (depositValue * 0.005) * timeInSavings;
  double incomeTotal = depositValue + incomeValue;
  
  stdout.write("Rendeu em $timeInSavings meses: $incomeValue\n");
  stdout.write("Total com o rendimento: $incomeTotal\n");

}