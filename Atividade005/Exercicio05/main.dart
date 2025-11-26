// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima o segundo maior valor presente na lista. A lista pode 
// conter duplicatas, mas o segundo maior valor deve ser o valor distinto que é imediatamente menor que o maior valor.
import 'dart:io';
import 'dart:math';

List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  }
}

void encontrarSegundoMaior({
  required List<int> numeros
}){
  print('A lista completa: ${numeros}.');
  numeros.remove(numeros.reduce(max));

  print('O segundo maior valor da lista é: ${numeros.reduce(max)}.');
}

void main() {
  while(true){
    print("\x1B[2J\x1B[0;0H");
    
    numeros.sort();

    encontrarSegundoMaior(numeros: numeros);

    finalizar();
  }
}