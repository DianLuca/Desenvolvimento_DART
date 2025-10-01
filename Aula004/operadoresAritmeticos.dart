import 'dart:io';

void main(){
  print('Operadores Aritméticos');
  // Declarando variáveis;
  stdout.write('Entre com o valor de a: ');
  var a  = int.parse(stdin.readLineSync()!); // casting

  stdout.write('Entre com o valor de b: ');
  var b  = int.parse(stdin.readLineSync()!); // casting

  // Soma
  int soma = a + b;
  // Subtração
  int subtracao = a - b;
  // Produto
  int produto = a * b;
  // Divisão
  double divisao = a / b;
  // Divisão Inteira
  int divInteira = a ~/ b;
  // Resto da divisão
  int restoDivisao = a % b;

  print('-' * 70);
  print('A soma de $a + $b = $soma');
  print('A subtração de $a - $b = $subtracao');
  print('A multiplicação de $a × $b = $produto');
  print('A divisão de $a ÷ $b = ${divisao.toStringAsFixed(2)}');
  print('A divisão inteira de $a ~/ $b = $divInteira');
  print('O resto da divisão de $a % $b = $restoDivisao');
  print('-' * 70);
}