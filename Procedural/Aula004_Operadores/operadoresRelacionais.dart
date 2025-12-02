import 'dart:io';

void main(){
  //Declarando variáveis
  stdout.write('Entre com o valor de a: ');
  var a = int.parse(stdin.readLineSync()!);
  stdout.write('Entre com o valor de b: ');
  var b = int.parse(stdin.readLineSync()!);

  // Verificando as variáveis
  print('-' * 70);
  print('$a == $b. Resultado: ${a == b}');
  print('$a != $b. Resultado: ${a != b}');
  print('$a > $b. Resultado: ${a > b}');
  print('$a < $b. Resultado: ${a < b}');
  print('$a >= $b. Resultado: ${a >= b}');
  print('$a <= $b. Resultado: ${a <= b}');

  // Podemos atribuir esses resultados em uma variável
  bool igual = a == b;
  print('Verificação de igualdade: $igual');
  print('-' * 70);
}