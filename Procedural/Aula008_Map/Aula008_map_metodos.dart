void main() {
  Map<String, int> mapLength = {'a': 1, 'b': 2, 'c': 3};

  print('Este Map tem tamanho: ${mapLength.length}');
  print('-' * 70);

  // isEmpty / isNotEmpty -> verificam se o MAp está vazio ou não
  dynamic mapTesteVazio = {}; 
  dynamic mapTesteCheio = {'a': 1};

  print('Map vazio? ${mapTesteVazio.isEmpty}'); // true
  print('Map cheio? ${mapTesteCheio.isEmpty}'); // false

  print('Map não vazio? ${mapTesteVazio.isNotEmpty}'); // alse
  print('Map não cheio? ${mapTesteCheio.isNotEmpty}'); // true
  print('-' * 70);

  // Keys /values -> retornam todas as chaves e valores (Iterable)
  Map<String, int> mapChaveValor = {'a': 1, 'b': 2, 'c': 3};
  print('Chaves: ${mapChaveValor.keys}'); // (a, b, c)
  print('Valores: ${mapChaveValor.values}'); // (1, 2, 3)
  print('-' * 70);

  Map<String, int> mapContain = {'a': 1, 'b': 2, 'c': 3};
  print('O Map contém a chave com "a"? ${mapContain.containsKey('a')}'); // True
  print('O Map contém a chave com "d"? ${mapContain.containsKey('d')}'); // False

  print('O Map contém a valor com 1? ${mapContain.containsValue(1)}'); // True
  print('O Map contém a valor com 4? ${mapContain.containsValue(4)}'); // False
  print('-' * 70);

  Map<String, int> testeAbsent = {'a': 1, 'b': 2, 'c': 3};
  print('Map original: $testeAbsent');
  print('Adicionando o par chave/valor d:4');
  testeAbsent.putIfAbsent('d', ()=> 4);
  print(testeAbsent);

  print('Tentando adicionar o par chave/valor d:5');
  print('Adicionando o par chave/valor d:5');
  testeAbsent.putIfAbsent('d', ()=> 5);
  print(testeAbsent);
  print('-' * 70);
  
  Map<String, int> testeRemove = {'a': 1, 'b': 2, 'c': 3};
  print('Map original: $testeRemove');
  testeRemove.remove('b');
  print('Após remover chave "b": $testeRemove');
  print('-' * 70);

  Map<String, int> mapUpdate = {'a': 1, 'b': 2, 'c': 3};
  print('Map original: $mapUpdate');

  mapUpdate.update('b', (value) => value + 1);
  print('Após atualizar o "b": $mapUpdate');

  mapUpdate.update('d', (value) => value + 1, 
  ifAbsent: () => 4); // cria a chave d com valor 4
  
  print('Após a inclusão de d: $mapUpdate');
}