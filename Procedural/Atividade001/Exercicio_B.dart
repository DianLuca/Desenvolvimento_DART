// Faça um programa que peça 2 valores. Calcule e imprima a soma, subtração, produto, divisão, resto da divisão e divisão inteira.
import 'dart:io';

void main() {
  print('----- Operações -----');

  // Recebendo o valor com String e podendo ser nulas
  stdout.write('Insira o primeiro valor inteiro: ');
  // Se caso a variável não for iniciada com String ocorrerá um erro
  String? valor = stdin.readLineSync();

  stdout.write('Insira o segundo valor inteiro: ');
  String? valor1 = stdin.readLineSync();

  if (((valor != null && valor != '') && (valor1 != null && valor1 != ''))) {
    // Validando a entrada para não ocorrer erros
    try {
      // Realizando o casting
      int a = int.parse(valor);
      int b = int.parse(valor1);

      int soma = a + b;
      int subtracao = a - b;
      int produto = a * b;

      print('Soma: $a + $b = $soma');
      print('Subtração: $a - $b = $subtracao');
      print('Multiplicação: $a x $b = $produto');
      if (b == 0) {
        print('Não é possível realizar divisões por 0!');
      } else {
        double divisao = a / b;
        // Se o colocar a variável com double retorna erro ???
        int divisaoInteira = a ~/ b;
        int restoDivisao = a % b;

        print('Divisão: $a ÷ $b = ${divisao.toStringAsFixed(2)}');
        print('Divisão Inteira: $a ~/ $b = $divisaoInteira');
        print('Resto Divisão: $a % $b = $restoDivisao');
      }
    } catch (e) {
      print('$e \n Insira apenas valores números inteiros!');
    }
  } else {
    print('Insira apenas valores não nulos!');
  }
}
