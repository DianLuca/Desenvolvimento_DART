// 19. Análise Estatística Básica em Lista Numérica
// Dada uma lista de números inteiros, calcule o desvio padrão amostral de forma 
// simplificada. O processo envolve: 1) calcular a média; 2) calcular a diferença 
// entre cada número e a média, elevando ao quadrado; 3) somar os resultados; 4) 
// dividir pela contagem de elementos menos 1; 5) tirar a raiz quadrada do resultado.
import 'dart:io';
import 'dart:math';

List<int> numeros = [5, 6, 7, 8, 9, 10];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  } else {
    // palavras.clear();
  }
}
void main() {
  while(true){
    
    print('Todos os elementos contidos na lista: $numeros.');
    int somaNum = 0;
    double media = 0;

    for (int numero in numeros) {
      somaNum += numero;
      media = somaNum / numeros.length;
    }
    
    print('A média da soma de todos os valores: $media.\n');

    for (int numero in numeros) {
      double diferenca = media - numero;
      print('A diferença entre a média e o valor ao quadrado é de: ${pow(diferenca, 2).toDouble().toStringAsFixed(2)}.');
      
    }
    
    double valorDiminuido = somaNum / (numeros.length -1);

    print('\nA soma de todos os valores: $somaNum.');
    print('\nA soma de todos os valores removendo um elemento: ${valorDiminuido}.');
    print('A raiz quadrada da média dos valores: ${sqrt(valorDiminuido)}.');

    finalizar();
  }
}