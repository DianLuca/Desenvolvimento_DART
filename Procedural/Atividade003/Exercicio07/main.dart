// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que 
// terminam com a letra 'R' (maiúscula ou minúscula). As palavras devem ser separadas por um espaço
// na frase final.
import 'dart:io';
List<String> palavras = ['Otomano', 'Rato', 'rapidamente', 'Rasgou', 'varanda', 'rede', 'na', 'Rua', 'antiga', 'ontem'];
void main() {
  while(true){
      
      List<String> palavrasComRr = palavras.where((palavra) => palavra.endsWith('R') || palavra.endsWith('r')).toList();

      for (String palavraRr in palavrasComRr){
        stdout.write('$palavraRr ');
      }

      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}