void main() {
  // cHAVE E VALOR COM NOME E IDADE
  Map<String, int> pessoas = {'Alice': 20, 'Bob': 17, 'Carol': 25, 'Dave': 16, 'Eve': 30};
  Map<String, int> numeros = {'um': 1, 'dois': 2, 'tres': 3, 'quatro': 4, 'cinco': 5};
  
  print('-' * 70);
  print('EXEMPLO DE WHERE(), MAP() E REDUCE() NA FILTRAGEM E COM STRINGS');
  print('-' * 70);

  // -------------------------
  /*
    Encadeamento de métodos funcionais:
    Objetivo: pegar os nomes de pessoas adultas, colocar em maiúscula e 
    concatenar em uma única String
  */

  // Entradas do Map (nome, idade)e
  String  nomesAdultos = pessoas.entries
    // Filtra: apenas maiores de idade
    .where((entrada) => entrada.value >= 18)
    // Transforma: nomes em maiúscula
    .map((entrada) => entrada.key.toUpperCase())
    // Reduz: concatena os nomes
    .reduce((acumulador, nome) => '$acumulador, $nome');

  
  // -------------------------
  // Encadeamento de métodos funcionais:
  int soma = numeros.values // Pegamos apenas os valores do Map[1,2,3,4,5]
    .where((entrada) => entrada % 2 == 0) // Filtra: mantém apenas os pares -> [2, 4]
    .map((entrada) => entrada * 2) // Transforma: multiplica cada valor por 2 -> [4, 8]
    .reduce((soma, num) => soma + num); // Reduz: soma todos os elementos -> 12

  
  
  // Saída esperada:
  print("Resultado final: $soma"); // 12
  print("Nomes das pessoas adultas: $nomesAdultos"); // ALICE, CAROL, EVE
  print('-' * 70);
}