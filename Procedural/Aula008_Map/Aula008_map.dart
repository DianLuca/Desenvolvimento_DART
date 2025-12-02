void main() {
  // ------------
  // Map de agenda: cada chave é o nome da pessoa 
  // e cada valor é outro Map com informações detalhadas (idade e e-mail)
  Map<String, dynamic> agenda = {
    'John': {'idade': 50, 'email': 'john@email.com'},
    'Jane': {'idade': 40, 'email': 'jane@email.com'},
  };

  // ---------
  // Map de cadastro pessoal: chave -> valor com tipos variados (int, double, String) 
  // dynamic permite que cada valor seja de tipo diferente
  Map<String, dynamic> cadastro = {
    'nome': 'John Doe',
    'nascimento': 1970,
    'altura': 1.80,
    'est_civil': 'solteiro',
    'cidade': 'Juiz de Fora',
    'uf': 'MG'
  };

  // ------
  // Saída
  print('-' * 70);
  print('Minha agenda');
  print(agenda); // imprime o Map completo
  print('-' * 70);

  print('-' * 70);
  print('Meu cadastro');
  print(cadastro); // imprime o Map completo
  print('-' * 70);
}