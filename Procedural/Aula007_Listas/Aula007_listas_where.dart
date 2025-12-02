void main() {
  print('-' * 70);
  print('Exemplo de uso de where()');
  print('-' * 70);

  // Declaração da lista
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // .toList() transforma a busca em uma lista separada
  List<int> numerosPares = numeros.where((num) => num % 2 == 0).toList();

  print('-' * 70);
  print('Nova lista: ${numerosPares}');
  print('-' * 70);
}