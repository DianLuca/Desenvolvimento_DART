// Faça um programa para calcular juros.
// juros simples = capital(1+ taxa * tempo)
// juros composto = capital(1+ taxa)^tempo 
import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('Insira o capital: ');
  String? numeroA = stdin.readLineSync();
  stdout.write('Insira a taxa em porcetagem(%) ao mês: ');
  String? numeroB = stdin.readLineSync();
  stdout.write('Insira o tempo em meses: ');
  String? numeroC = stdin.readLineSync();

  try{
    double jurosSimples;
    double jurosCompostos;
    String capital = numeroA!.replaceAll(',', '.').trim();
    double capitalValor = double.parse(capital);

    double taxa = double.parse(numeroB!) / 100;
    int tempo = int.parse(numeroC!);

    jurosCompostos = capitalValor * pow(1 + taxa, tempo);
    jurosSimples = capitalValor * (1 + taxa * tempo);

    print("O montante acumulado em Juros Simples será de: ${jurosSimples.toStringAsFixed(2).replaceAll('.', ',')} reais");
    print("O montante acumulado em Juros Compostos será de: ${jurosCompostos.toStringAsFixed(2).replaceAll('.', ',')} reais");

  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}