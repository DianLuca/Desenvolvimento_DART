// Faça um programa que peça 4 notas com entrada de dados. O programa deverá calcular a média das notas digitadas.
import 'dart:io';

void main() {
  print('--- Média entre 4 valores ---');
  stdout.write('Insira a primeira nota: ');
  String? nota = stdin.readLineSync();

  stdout.write('Insira a segunda nota: ');
  String? nota1 = stdin.readLineSync();

  stdout.write('Insira a terceira nota: ');
  String? nota2 = stdin.readLineSync();

  stdout.write('Insira a quarta nota: ');
  String? nota3 = stdin.readLineSync();

  if ((nota != null && nota1 != null && nota2 != null && nota3 != null) &&
      (nota != '' && nota1 != '' && nota2 != '' && nota3 != '')) {
    try {
      double a = double.parse(nota);
      double b = double.parse(nota1);
      double c = double.parse(nota2);
      double d = double.parse(nota3);

      double media = (a + b + c + d) / 4;
      print('A média das notas inseridas é de: ${media.toStringAsFixed(2)}');
    } catch (e) {
      print('$e \nInsira apenas valores númericos!');
    }
  } else {
    print('Insira valores não nulos ou vazios.');
  }
}
