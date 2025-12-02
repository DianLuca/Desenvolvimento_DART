// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova lista apenas as palavras que satisfazem duas
// condições simultâneas: 1) o comprimento da palavra deve ser maior que 5 caracteres; 2) a palavra deve começar 
// com a letra 'A' (maiúscula ou minúscula).
import 'dart:io';
List<String> frutas = ['Maçã', 'Banana', 'Laranja', 'Manga', 'Uva', 'Abacaxi', 'Morango', 'Melancia'];

void main() {
  while(true){
      
      List<String> filtrarElementos = frutas.where((fruta) => fruta.length > 5 && (fruta.startsWith('A') || fruta.startsWith('a'))).toList();

      print(filtrarElementos);

      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}