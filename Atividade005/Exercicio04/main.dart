// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número, verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado por 2. 
// Se for par, ele deve permanecer inalterado. O resultado final deve ser uma nova lista com os valores transformados.
import 'dart:io';
List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<int> numerosImparesIterados = [];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  }
}

void multiplicarImpar({
  required List<int> numeros
}) {
  for (int num in numeros){
    if (num % 2 != 0){
      numerosImparesIterados.add(num * 2);
    } else {
      numerosImparesIterados.add(num);
    }
  }

  print(numerosImparesIterados);
}

void main(){
  while(true){
    print("\x1B[2J\x1B[0;0H");

    multiplicarImpar(numeros: numeros);

    finalizar();
  }
}