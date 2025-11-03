// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige que se descarte a menor nota da lista e, 
// em seguida, calcule a média aritmética das notas restantes. O resultado deve ser um número decimal (double).
import 'dart:io';
void main() {
  while(true){
      
      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}