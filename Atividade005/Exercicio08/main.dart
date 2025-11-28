// 8. Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde cada inteiro representa o 
// número de caracteres da palavra correspondente na lista original.
import 'dart:io';
// List<String> palavras = ['Otomano', 'Rato', 'rapidamente', 'Rasgou', 'varanda', 'rede', 'na', 'Rua', 'antiga', 'ontem'];
List<String> palavras = [];

List<int> numCaracteres = [];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    palavras.clear();
  }
}

String contarCaracteres({
  required List<String> palavras
}){

  palavras.forEach((palavra) => numCaracteres.add(palavra.length));

  for(String palavra in palavras){
    // Apenas para exibir a palavra inserida e o número de caracteres.
    int caracteres  = palavra.length;
    print('A palavra "$palavra" contém $caracteres caracteres.');
    continue;
  }

  // for(int caracteres in numCaracteres){
  //   // Apenas para exibir apenas o número de caracteres.
  //   print('\nO número de caracteres de cada palavra inserida respectivamente: $caracteres letras.');
  //   continue; 
  // }
  
  return "Nenhuma palavra foi encontrada!";
}

List adicionarPalavras({
  required int numPalavras
}){
  for(int i = 1; i <= numPalavras; i++){
    stdout.write('Digite a ${i}ª palavra: ');
    String? palavra = stdin.readLineSync();

    palavras.add(palavra!.trim());
  }
  return palavras;
}

void main() {
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Transformação de Lista de Palavras em Lista de Comprimentos -----');
    stdout.write('Quantas palavras deseja inserir: ');
    String? entrada = stdin.readLineSync();

    if(entrada != null && entrada.trim().isNotEmpty){
      int? numPalavra = int.tryParse(entrada);
      adicionarPalavras(numPalavras: numPalavra!);

      contarCaracteres(palavras: palavras);
    } else {
      print('Insira apenas um valor númerico.');
    }

    finalizar();
  }
}