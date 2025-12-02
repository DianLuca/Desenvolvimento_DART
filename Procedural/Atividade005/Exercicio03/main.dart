// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, 
// em seguida, calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).
import 'dart:io';
import 'dart:math';

List<int> listaNotasAlunos = [5, 7, 2, 2];

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
      print('Programa encerrado!');
      exit(0);
  }
}

void exibirMedia({
  required List<int> listaNotasAlunos
}) {
  List<int> notas = List.from(listaNotasAlunos);

  notas.remove(notas.reduce(min));

  double somaNotas = 0;
  for( int num in notas) {
    somaNotas += num;
  }
  
  double media = somaNotas / listaNotasAlunos.length;

  print('A média das notas: ${media.toStringAsFixed(2)}');
}

void main() {
  while(true){
      print("\x1B[2J\x1B[0;0H");
      
      exibirMedia(listaNotasAlunos: listaNotasAlunos);
      
      finalizar();
  }
}