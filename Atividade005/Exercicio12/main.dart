// 12. Cálculo de Estoque Total de Produtos Ativos
// Dada uma lista de Maps, onde cada Map representa um produto com as chaves "nome" (String), 
// "estoque" (int) e "ativo" (bool), calcule a soma total do estoque de todos os produtos que 
// estão com o status "ativo" igual a true.
import 'dart:io';

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    // palavras.clear();
  }
}
void main(){
  while(true){
    
    finalizar();
  }
}