// 12. Cálculo de Estoque Total de Produtos Ativos
// Dada uma lista de Maps, onde cada Map representa um produto com as chaves "nome" (String), 
// "estoque" (int) e "ativo" (bool), calcule a soma total do estoque de todos os produtos que 
// estão com o status "ativo" igual a true.
import 'dart:io';

List<Map<String, dynamic>> estoque=[{'nome': 'Pão', 'estoque': 10, 'ativo': true}];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair.toLowerCase() == 's'){
    print('Programa encerrado!');
    exit(0);
  }
}

void exibir(){
  for (var item in estoque) {
    print('-' * 70);
    print('NOME : ${item['nome'].toUpperCase()} - QUANTIDADE(unidade) : ${item['estoque']} - STATUS : ${item['ativo']}');
  }
  print('=' * 70);
}

List adicionar({
  required String nomeProduto,
  required int quantidade,
  required bool status
}){
  
  estoque.add({'nome' : nomeProduto, 'estoque': quantidade, 'ativo': status});
  print('Produto adicionado com sucesso!');
  return estoque;
}

void main(){
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Cálculo de Estoque Total de Produtos Ativos -----');
    stdout.write('1 - CADASTRAR PRODUTO \n2 - EXIBIR LISTA DE PRODUTOS \n3 - ENCERRAR SISTEMA \nSELECIONE A OPÇÃO DESEJADA: ');
    String? opcao = stdin.readLineSync();

    switch(opcao){
      case '1':
        print("\x1B[2J\x1B[0;0H");
        print('--- ADICIONANDO PRODUTO ---');
        stdout.write('Insira o nome do produto: ');
        String? nomeProduto = stdin.readLineSync();

        if(nomeProduto != null && nomeProduto.trim().toUpperCase() != '' ){
          int quantidade = 0;
          bool status = false;

          stdout.write('Insira a quantidade de produtos: ');
          String? entradaQuantidade = stdin.readLineSync();

          if(entradaQuantidade != '' && entradaQuantidade != null){
            quantidade = int.parse(entradaQuantidade);
          } else {
            print('O valor deve ser um inteiro! Valor adotado 0!');
          }

          stdout.write('O produto está ativo no estoque (s - sim): ');
          String? entradaStatus = stdin.readLineSync();

          if(entradaStatus != null && entradaStatus.trim().toLowerCase() == 's'){
            status = true;
          }

          adicionar(nomeProduto: nomeProduto, quantidade: quantidade, status: status);
          print('Produto cadastrado com sucesso!');
        } else {
          print('\nO nome do produto não pode ser vazio!');
        }
        stdout.write('\nPressione "Enter" para voltar ao menu principal: ');
        stdin.readLineSync();
        break;
      case '2':
        print("\x1B[2J\x1B[0;0H");
        print('--- EXIBINDO LISTA DE PRODUTOS ---');
        exibir();
        stdout.write('\nPressione "Enter" para voltar ao menu principal: ');
        stdin.readLineSync();
        break;
      case '3':
        finalizar();
        break;
      default:
        stdout.write('Opção não encontrada! Pressione "Enter" para continuar: ');
        stdin.readLineSync();
        break;
    }

  }
}