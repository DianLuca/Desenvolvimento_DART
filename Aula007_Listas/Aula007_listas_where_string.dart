void main() {
  print('-' * 70);
  print('Exemplo de uso de where() com string');
  print('-' * 70);

  // Declaração da lista com nomes
  List<String> nomes = ['Alice', 'Ana', 'Beatriz', 'Bruna', 'Carla', 'Caio'];

  // Filtrar nomes que começam com a letra 'A'
  List<String> nomesComA = nomes.where((nome) => nome.startsWith('A')).toList();

  // Filtrar nomes com mais de 4 caracteres
  List<String> nomesLongos = nomes.where((nome) => nome.length > 4).toList();


  print('Nomes que começam com a letra "A": ${nomesComA}');
  print('=' * 70);
  print('Nomes com mais de 4 caracteres: ${nomesLongos}');
  print('-' * 70);
}