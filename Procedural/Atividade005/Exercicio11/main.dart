// 11. Seleção de Registros por Idade Mínima
// Dada uma lista de Maps, onde cada Map representa um usuário com as chaves "nome" (String) e "idade" (int), 
// filtre e colete em uma nova lista apenas os Maps dos usuários que são maiores de 18 anos.
import 'dart:io';
List<Map<String, dynamic>> pessoas = [];

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

void inserirPessoas(){
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Seleção de Registros por Idade Mínima -----');
    print('--- Inserindo -----');
    stdout.write('Digite o nome: ');
    String? entradaNome = stdin.readLineSync();

    stdout.write('Digite a idade: ');
    String? entradaIdade = stdin.readLineSync();

    int idade = int.parse(entradaIdade!.trim());

    pessoas.add({'nome': entradaNome!.trim().toUpperCase(), 'idade': idade});

    stdout.write('Deseja adicionar outra pessoa(s - sim | n - não): ');
    String? entradaParada = stdin.readLineSync();

    if(entradaParada == 'n' && entradaParada != null){
      break;
    }
  }
}

void verificarMaiores(){
  print('\nOs nomes a seguir são de pessoas maiores de 18 anos:');
  for(dynamic pessoa in pessoas){
    if(pessoa['idade'] >= 18){
      stdout.write('Nome: ${pessoa['nome']} - Idade: ${pessoa['idade']} | ');
    }
  }

  print('\nOs nomes a seguir são de pessoas menores de 18 anos:');
  for(dynamic pessoa in pessoas){
    if(pessoa['idade'] < 18){
      stdout.write('Nome: ${pessoa['nome']} - Idade: ${pessoa['idade']} | ');
    }
  }
}

void main(){
  while(true){

    inserirPessoas();

    verificarMaiores();
    
    finalizar();
  }
}