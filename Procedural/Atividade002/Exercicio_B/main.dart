// Fatorial com repetição: Faça um programa que leia um número inteiro positivo e calcule seu fatorial usando um loop.
import 'dart:io';
void main(){
  while(true){
    print('----- CÁLCULO DE FATORIAL -----');
    stdout.write('Insira um valor inteiro positivo: ');
    String? valor = stdin.readLineSync();

    try {
      int n = int.parse(valor!.trim());
      int resultado = 1;

      if(n > 0){
        for(int i = 1; i <= n; i++){
          resultado *= i;
        }

        print('O fatorial de ${n}! é: ${resultado}.');
      } else {
        print('Insira apenas valores positivos!');
        continue;
      }
      
    } catch (e) {
      print('Não foi possível realizar a verificação com os valores inseridos. Tente novamente!');
    }

    stdout.write('Deseja encerrar o sistema(s - sim | n - não)? ');
    String? sair = stdin.readLineSync();

    if(sair != null && sair.trim().isNotEmpty && sair == 's'){
        print('Programa encerrado!');
        break;
    }
  }
}