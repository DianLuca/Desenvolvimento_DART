// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados, o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção (ou usar um Set temporário, se permitido, ou uma 
// lista auxiliar) para armazenar apenas os elementos que ainda não foram vistos, reportando o total de elementos únicos ao final.
import 'dart:io';

List<int> numeros = [2, 5, 5, 7, 10, 20, 20];
// List<int> numerosDiferentes = [];

List verificarDiferente(List<int> numeros){
  print('A lista de números recebida: \n${numeros}');

  List<int> numerosDiferentes = numeros.toSet().toList();
  
  return numerosDiferentes;
}


void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  }
}

void main() {
    while(true){
      print("\x1B[2J\x1B[0;0H");
      
      print(verificarDiferente(numeros));
      
      finalizar();
    }
}