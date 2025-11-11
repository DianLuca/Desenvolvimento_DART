void main() {
  Map<String, int> pessoas = {'Alice': 20, 'Bob': 17, 'Carol': 25, 'Dave': 16, 'Eve': 30};
  
  print('-' * 70);
  print('EXEMPLO DE WHERE EM MAP');
  print('-' * 70);

  // Filtra apenas as pessoas com idade maior que 18 anos
  // 1 - pessoas.entries retorna um Iterable de MapEntry (chave e valor)
  // 2 - where((idade) => idade.value > 18) filtra apenas as entradas 
  //     cujo valor (idade) é maior que 18
  // 3 - Map.fromEntries(...) converte novamente o Iterable filtrando em um Map

  Map<String, int> pessoasMaiores = Map.fromEntries(pessoas.entries.where((idade) => idade.value > 18));
  
  // Saída esperada:
  print(pessoasMaiores); // {Alice: 20, Carol: 25, Eve: 30}
  print('-' * 70);
}