// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, 
// em seguida, calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).
import 'dart:io';
import 'dart:math';
// List<dynamic> listaAlunos = ['José', [5, 7, 9, 2]];
List<int> listaNotasAlunos = [5, 7, 2, 2];

void main() {
  while(true){

      print(listaNotasAlunos);

      // Removendo o menor valor da lista
      // Funciona incorretamente quando o menor valor se repete
      // List<int> notas = listaNotasAlunos.where((nota) => nota != listaNotasAlunos.reduce(min)).toList();
      
      // Funciona corretamente dessa forma
      List<int> notas = List.from(listaNotasAlunos);

      notas.remove(notas.reduce(min));

      // Varrendo as notas
      double somaNotas = 0;
      for( int num in notas) {
        somaNotas += num;
      }
      
      double media = somaNotas / notas.length;

      print('A média das notas: ${media.toStringAsFixed(2)}');
      
      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}