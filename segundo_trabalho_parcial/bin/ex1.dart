/* 
Em uma competição de natação, os nadadores são premiados com base na distância máxima percorrida. A premiação segue as seguintes regras:
Se a distância for menor que 800 metros, o nadador recebe R$ 5.000,00.
Se a distância estiver entre 800 e 1500 metros (inclusive 800 e 1500), o prêmio é de R$ 10.000,00.
Para distâncias superiores a 1500 metros, o nadador recebe R$ 15.000,00.

Desenvolva um programa que leia a distância percorrida e exiba na tela o valor do prêmio correspondente.
*/
import 'dart:io';
void main(List<String> args) {
  stdout.write("Insira a distância que vc nadou: ");
  int? distance = int.tryParse(stdin.readLineSync()!) ?? 0;

  if(distance < 800 && distance > 0){
    stdout.write("Parabéns! Você recebeu o prêmio no valor de 5.000,00 reais \n");
  } else if ( distance >= 800 && distance <= 1500 ) {
    stdout.write("Parabéns! Você recebeu o prêmio no valor de 10.000,00 reais \n");
  } else if( distance > 1500 ) {
    stdout.write("Parabéns! Você recebeu o prêmio no valor de 15.000,00 reais \n");
  } else {
    stdout.write("!! Distância não pode ser negativa !! \n");
  }
}