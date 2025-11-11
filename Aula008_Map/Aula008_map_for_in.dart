void main(){
  Map<String, int> meuMap = {'a': 1, 'b': 2, 'c': 3};

  // 1 - Usando entries -> percorre pares chave/valor diretamente
  print('-' * 70);
  print('VARREDURA COM ENTRIES');
  print('-' * 70);
  for (var entrada in meuMap.entries) {
    String chave = entrada.key; // acessa a chave
    int valor = entrada.value;  // acessa o valor
    print('$chave: $valor');
  }
  print('-' * 70);

  // 2 - Usando keys -> percorre apenas as chaves
  // Podemos recuperar o valor acessando o Map com a chave
  Map<String, dynamic> meuMap2 = {'Nome': 'John Doe', 'Nascimento': 1970};

  print('VARREDURA COM KEYS');
  print('-' * 70);
  for (String chave in meuMap2.keys) {
    dynamic valor = meuMap2[chave]; // busca o valor correspondente à chave
    print('$chave: $valor');
  }

  print('-' * 70);

  Map<String, dynamic> meuMap3 = {'Nome': 'John Doe', 'Nascimento': 1970};

  print('VARREDURA COM VALUES');
  print('-' * 70);
  for (var valor in meuMap3.values) {
    print(valor);
  }
  print('-' * 70);
}