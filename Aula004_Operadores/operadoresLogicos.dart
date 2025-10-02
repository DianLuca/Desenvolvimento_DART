void main() {
  // Declarando variáveis
  int a = 20;
  int b = 5;
  int c = 7;

  // Verificando verdadeiro
  bool proposicao = a > b; // True
  bool proposicao2 = b < c; // True

  print('Verdadeiro ----------');
  print('$a > $b && $b < $c - Resposta: ${proposicao && proposicao2}');
  print('$a > $b && $b > $c - Resposta: ${proposicao || proposicao2}\n');


  bool proposicao3 = a < b; // False
  bool proposicao4 = b > c; // False

  print('Falso ----------');
  print('$a < $b && $b > $c - Resposta: ${proposicao3 && proposicao4}');
  print('$a > $b && $b > $c - Resposta: ${proposicao3 || proposicao4}\n');

  // Negando um valor
  bool v = true;
  bool f = false;

  print('Negando ------------');
  print('Negando o V: ${!v}');
  print('Negando o F: ${!f}');
}