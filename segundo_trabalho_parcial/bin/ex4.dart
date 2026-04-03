/*

Desenvolva um programa que solicite o nome de um estado brasileiro e informe sua respectiva região:
Norte: Acre, Amapá, Amazonas, Pará, Rondônia, Roraima, Tocantins
Nordeste: Alagoas, Bahia, Ceará, Maranhão, Paraíba, Pernambuco, Piauí, Rio Grande do Norte, Sergipe
Centro-Oeste: Goiás, Mato Grosso, Mato Grosso do Sul, Distrito Federal
Sudeste: Espírito Santo, Minas Gerais, Rio de Janeiro, São Paulo
Sul: Paraná, Rio Grande do Sul, Santa Catarina

Se o estado informado não constar na lista, exiba: "Estado não reconhecido."

*/

import 'dart:io';

void main(List<String> args) {
  stdout.write("Informe o seu estado(sem acentos): ");
  String? country = stdin.readLineSync()!;
  String countryFormatted = country.toLowerCase().trim().replaceAll(" ", "");

  String region = "";
  for(var state in Norte.values){
    if(countryFormatted == state.name){
      region = "Norte";
    }
  }
  for(var state in Nordeste.values){
    if(countryFormatted == state.name){
      region = "Nordeste";
    }
  }
  for(var state in CentroOeste.values){
    if(countryFormatted == state.name){
      region = "Centro Oeste";
    }
  }
  for(var state in Sudeste.values){
    if(countryFormatted == state.name){
      region = "Sudeste";
    }
  }
  for(var state in Sul.values){
    if(countryFormatted == state.name){
      region = "Sul";
    }
  }

  stdout.write("$country pertence á $region\n");
}

enum Norte{
  acre,
  amapa,
  amazonas,
  para,
  rondonia,
  roraima,
  tocantins
}

enum Nordeste {
  alagoas,
  bahia,
  ceara,
  maranhao,
  paraiba,
  pernambuco,
  piaui,
  riograndedonorte,
  sergipe
}

enum CentroOeste {
  goias,
  matogrosso,
  matogrossodosul,
  distritofederal
}

enum Sudeste {
  espiritosanto,
  minasgerais,
  riodejaneiro,
  saopaulo
}

enum Sul {
  parana,
  riograndedosul,
  santacatarina
}