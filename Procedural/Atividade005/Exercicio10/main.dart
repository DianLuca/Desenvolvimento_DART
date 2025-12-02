// 10. Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, mas na ordem inversa da 
// lista original. O uso de List.reversed é permitido para fins de comparação, mas a implementação principal 
// deve usar uma estrutura de repetição (for ou while).
import 'dart:io';
List<String> itens = [];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    itens.clear();
  }
}

List inserirLista({
  required int vezes
}){
  for (int i = 1; i <= vezes; i++){
    stdout.write('Insira o ${i}º elemento: ');
    String? entrada = stdin.readLineSync();
    if(entrada != ''){
      itens.add(entrada!.trim());
    } else {
      print('Você deve inserir algo! Tente novamente.');
      stdin.readLineSync();
      i--;
      print("\x1B[2J\x1B[0;0H");
    }
  }

  return itens;
}

void exibirListaInvertida(){
  itens = itens.reversed.toList();
  if (itens.isNotEmpty){
    for(String item in itens){
      stdout.write("${item} |");
    }

    print('\nPressione Enter para continuar.');
    stdin.readLineSync();
  } else {
    print('\nNão há elementos para serem exibidos! Pressione Enter para continuar.');
    stdin.readLineSync();
  }
}

void main() {
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Reversão Manual da Ordem dos Elementos -----');

    stdout.write('Quantos elementos deseja inserir? (mínimo 4): ');
    String? valEntrada = stdin.readLineSync();

    int? numVezes = int.tryParse(valEntrada!.trim());

    if(numVezes != null && numVezes != '' && numVezes >= 4){
      inserirLista(vezes: numVezes);
    } else {
      print('O mínimo permitido é 4 elementos! Este valor será adotado!');
      numVezes = 4;
      inserirLista(vezes: numVezes);
    } 
    
    exibirListaInvertida();
    
    finalizar();
  }
}