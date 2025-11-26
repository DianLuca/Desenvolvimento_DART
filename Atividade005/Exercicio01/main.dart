// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro filtrar 
// apenas os números que são pares e, simultaneamente, maiores que 10. 
// Após a filtragem, deve-se calcular a soma total desses números restantes.
import 'dart:io';

List<int> numeros = [];

void exibirPares(){
  int numeroNaoCorespondetes = 0;

  stdout.write('\nOs valores pares e maiores que 10: ');
  for (int numero in numeros){
    if(numero % 2 == 0 && numero > 10){
      stdout.write('$numero | ');
    } else {
      numeroNaoCorespondetes += numero;
    }
  }

  stdout.write('\nA soma dos demais valores inseridos é: $numeroNaoCorespondetes.');
}

List inserirValores(int valores){
  for (int i = 0; i < valores; i++){
    stdout.write('Insira os valores: ');
    String? valor = stdin.readLineSync();

    int num = int.parse(valor!);

    numeros.add(num);
  }
  return numeros;
}

dynamic finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  } else {
    return numeros.clear();
  }
}

void main() {
    while(true){
      print('----- Filtragem e Soma Condicional de Pares -----');

      stdout.write('Digite quantos números você deseja inserir na lista: ');
      String? contagem = stdin.readLineSync();

      int cont = int.parse(contagem!);
      
      inserirValores(cont);

      exibirPares();

      print('');

      finalizar();
    }
}