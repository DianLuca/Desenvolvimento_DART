// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas
// condições simultâneas: 1) o comprimento da palavra deve ser maior que 5 caracteres; 2) a palavra deve começar 
// com a letra 'A' (maiúscula ou minúscula).
import 'dart:io';
List<String> frutas = ['Maçã', 'Banana', 'Laranja', 'Manga', 'Uva', 'Abacaxi', 'Morango', 'Melancia'];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  }
}

void encontrarFruta({
  required List<String> frutas,
  required letra
}){

  List<String> filtrarElementos = frutas.where((fruta) => fruta.length > 5 && (fruta.startsWith(letra.toLowerCase()) 
  || fruta.startsWith(letra.toUpperCase()))).toList();

  if(filtrarElementos.isNotEmpty){
    print('\nAs frutas encontradas na lista com a inicial "${letra}" e com número de caracteres maior que 5 foram:');
    for (String item in filtrarElementos){
      stdout.write('${item} | ');
    }
  } else {
    print('\nNão há nenhuma fruta com a letra selecionada.');
  }
}

void main() {
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Filtragem Dupla em Lista de Palavras -----');
    
    stdout.write('Qual letra deseja verificar se está na lista: ');
    String? letra = stdin.readLineSync();

    encontrarFruta(frutas: frutas, letra: letra!.trim());

    finalizar();
  }
}