import 'dart:io';
void main() {
  stdout.write('1 - Número par \n2 - Maior número \n3 - Sair \nSelecione uma das opções: ');
  var opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      stdout.write('Insira um número: ');
      var numero = int.parse(stdin.readLineSync()!);
      if(numero % 2 == 0) {
        print('O número $numero é par!');
      } else {
        print('O número $numero é ímpar!');
      }
      break;
    case 2:
      stdout.write('Insira o valor de A: ');
      var a = int.parse(stdin.readLineSync()!);
      stdout.write('Insira o valor de B: ');
      var b = int.parse(stdin.readLineSync()!);

      if(a > b){
        print('O número $a é maior que o número $b!');
      } else if (a < b) {
        print('O número $a é menor que o número $b!');
      } else {
        print('Os números são iguais!');
      }
      break;
    case 3:
      print('Saindo do programa...');
      break;
    default:
      print('Fora do intervalo de opções!');
  }
  
}