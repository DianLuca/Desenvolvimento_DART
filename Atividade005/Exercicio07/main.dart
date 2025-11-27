// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase) concatenando apenas as palavras que 
// terminam com a letra 'R' (maiúscula ou minúscula). As palavras devem ser separadas por um espaço
// na frase final.
import 'dart:io';
List<String> palavras = ["amar", "comer", "dormir", "fazer", "saber", "trazer", "ouvir", "cair", "ler", "abrir"];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  }
}

void criarFrase({
  required List<String> palavras,
  required letra
}){
  List<String> palavrasComRr = palavras.where((palavra) => palavra.endsWith(letra.toUpperCase()) 
  || palavra.endsWith(letra.toLowerCase())).toList();

  if(palavrasComRr.isNotEmpty){
    for (String palavraRr in palavrasComRr){
      stdout.write('$palavraRr ');
    }
  } else {
    print('Não há palavras com a letra selecionada.');
  }
}

void main() {
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Filtragem Dupla em Lista de Palavras -----');
    
    stdout.write('Qual letra deseja verificar se está na lista: ');
    String? letra = stdin.readLineSync();

    criarFrase(palavras: palavras, letra: letra!.trim());

    finalizar();
  }
}