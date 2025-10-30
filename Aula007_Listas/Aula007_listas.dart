void main(){
  // Lista vazia
  dynamic listaVazia = [];

  // Criando uma lista de inteiros
  // var para inferência de valores
  var numerosInterios1 = [1, 2, 3, 4, 5];

  // Utilizando Generics para tipar os valores

  // Lista de inteiros
  List<int> numerosInterios2 = [6, 7, 8, 9, 10];
  
  // Lista de pomto flutuante
  // 4 e 5 inteiros e lista é double?
  List<double> numerosDecimais = [1.1, 2.2, 3.3, 4.0, 5.0];

  // Lista de strings
  List<String> listaNomes = ['John Doe', 'Jane Doe'];

  // Lista de listas
  dynamic listaComListas = [
    [1, 2, 3],
    ['Um', 'Dois', 'Três']
  ];

  // Saída
  print('-' * 70);
  print('Lista vazia: $listaVazia');
  print('Lista de números inteiros 1: $numerosInterios1');
  print('Lista de números inteiros 2: $numerosInterios2');
  print('Lista de números decimais: $numerosDecimais');
  print('Lista de Strings: $listaNomes');
  print('Lista de listas: $listaComListas');
  print('-' * 70);
}