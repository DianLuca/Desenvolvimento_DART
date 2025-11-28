// 11. Seleção de Registros por Idade Mínima
// Dada uma lista de Maps, onde cada Map representa um usuário com as chaves "nome" (String) e "idade" (int), 
// filtre e colete em uma nova lista apenas os Maps dos usuários que são maiores de 18 anos.
import 'dart:io';
Map<String, int> pessoas = {
  'João': 25,
  'Maria': 15,
  'José': 10,
  'Bruna': 19,
};

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    // pessoas.clear();
  }
}

void main(){
  while(true){
        
        finalizar();
    }
}