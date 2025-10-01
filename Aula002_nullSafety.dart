void main() {
  // Esta variável PODE ser nula (pode causa do ?)
  String? nome;

  // Esta variável NÃO pode ser nula (sem ?)
  String saudacao = "Olá";

  // ----------
  print('Exemplo 1: Variável nula');
  print("$saudacao, $nome."); // Saída: Olá, null. (ela pode ser nula)

  // -----------
  print('-' * 70);
  print("\nExemplo 2: Atribuindo valor à variável nula");
  nome = "Maria";
  print("$saudacao, $nome"); // Saída: Olá, Maria.

  // -----------
  print('-' * 70);
  print('\nExemplo 3: Acessando valor com !');
  // nome agora tem valor, então podemos utilizar nome!
  String texto = nome!; // Usando o operador ! para "tirar" o ? do tipo
  print('Texto com nome: $texto');

  // ------------
  print('-' * 70);
  print('\nExemplo 4: Tentando usar variável não inicializada');
  // Vamos criar uma variável que PODE ser nula
  String? mensagem;

  // Agora vamos tentar forçar ela com !
  try {
    String novaMensagem = mensagem!;
    print(novaMensagem);
  } catch (e) {
    print('Erro: você tentou usar uma variável nula com !');
    print("Detalhes: $e");
  }

  print('-' * 70);
}
