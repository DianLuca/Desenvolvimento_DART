import 'dart:io';

// Classe Produto com construtor padrão e construtores nomeados
class Produto {
  String nome;
  double preco;

  // Construtor padrão
  Produto(this.nome, this.preco);

  // Construtor nomeado: cria um produto gratuito
  // O usuário informa só o nome, e o preço é automaticamente zero
  Produto.gratuito(this.nome) : preco = 0;

  // Construtor nomeado: cria um produto com valores fixos
  Produto.oferta() : nome = 'PS5 Pro', preco = 5000;

  // Método para exibir
  void exibir(){
    print('\n--- Dados do produto');
    print('Nome: $nome');
    print('Preço: RS $preco');
  }
}

void main(){
  stdout.write('Digite o nome do produto: ');
  String nome = stdin.readLineSync() ?? 'Desconhecido';

  stdout.write('Digite o preço do produto: ');
  double preco = double.tryParse(stdin.readLineSync() ?? "") ?? 0;

  // Criação dos objetos usando diferentes construtores

  // Produto criado com o construtor padrão
  Produto produto = Produto(nome, preco);

  // Produto gratuito usando construtor nomeado
  Produto produto1 = Produto.gratuito('Amostra grátis');

  // Produto padrão usando construtor nomeado
  Produto produto2 = Produto.oferta();

  print('\nProduto criado manualmente:');
  produto.exibir();

  print('\nProduto gratuito: ');
  produto1.exibir();

  print('\nProduto oferta: ');
  produto2.exibir();
}