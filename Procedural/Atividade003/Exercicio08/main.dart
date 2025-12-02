// 8. Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro representa o 
// número de caracteres da palavra correspondente na lista original.
import 'dart:io';
List<String> palavras = ['Otomano', 'Rato', 'rapidamente', 'Rasgou', 'varanda', 'rede', 'na', 'Rua', 'antiga', 'ontem'];


List<int> numCaracteres = [];
void main() {
  while(true){

    palavras.forEach((palavra) => numCaracteres.add(palavra.length));

    // for(String palavra in palavras){
    //   // Apenas para exibir corretamente, isso auxilia a cumprir a exibição dos elementos apenas.
    //   int caracteres  = palavra.length;
    //   print('A "$palavra" contém $caracteres letras.');
    // }

    for(int caracteres in numCaracteres){
      // Apenas para exibir corretamente, isso auxilia a cumprir a exibição dos elementos apenas.
      print('o número de caracteres de cada palavra inserida respectivamente: $caracteres letras.');
    }

    stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
    String? sair = stdin.readLineSync();

    if(sair != null && sair.trim().isNotEmpty && sair == 's'){
        print('Programa encerrado!');
        break;
    }
  }
}