// Soma dos múltiplos: Faça um programa que receba um número inteiro N e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.
import 'dart:io';

void main(){
  while(true){
        print('----- SOMA MÚLTIPLOS -----');
        stdout.write('Insira o valor inicial: ');
        String? valor = stdin.readLineSync();

        try {
          int n = int.parse(valor!);

          int multiplos = 0;

          for (int i = 1; i < n; i++){
            if(i % 3 == 0){
              multiplos += i;
              // print(i);
            }
            
            if(i % 5 == 0){
              multiplos += i;
              // print(i);
            }
          }

          print(multiplos);



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