// 10. Reversão Manual da Ordem dos Elementos
// Dada uma lista de strings, crie uma nova lista que contenha os mesmos elementos, mas na ordem inversa da 
// lista original. O uso de List.reversed é permitido para fins de comparação, mas a implementação principal 
// deve usar uma estrutura de repetição (for ou while).
import 'dart:io';
List<String> imperios = ['Império Romano', 'Império Bizantino', 'Império Otomano', 'Império Mongol', 'Império Persa',
 'Império Inca', 'Império Asteca', 'Império Maurya', 'Império Chines', 'Império Mali'];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    // imperios.clear();
  }
}
void main() {
  while(true){
    List<String> listaInversa = imperios.reversed.toList();
    print(listaInversa);

    for(int i = (imperios.length - 1); i >= 0; i--){
      print(imperios[i]);
    }
    
    finalizar();
  }
}