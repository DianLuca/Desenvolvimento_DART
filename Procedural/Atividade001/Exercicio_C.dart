// Faça um programa que peça o um ano qualquer. O programa deverá calcular e imprimir a idade.
import 'dart:io';

// Buscando o ano atual
int anoAtual = DateTime.now().year;
void main() {
  print('Qual a sua idade no ano de $anoAtual');

  stdout.write('Insira um ano qualquer (Ex.: 2000): ');
  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    try {
      int ano = int.parse(entrada);

      if (ano <= anoAtual) {
        int idade = anoAtual - ano;

        print('A sua idade é: $idade anos.');
      } else {
        print('Um viajante do tempo?!');
      }
    } catch (e) {
      print('Insira apenas valores numéricos inteiros');
    }
  }
}
