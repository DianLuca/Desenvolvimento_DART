// Tabela de velocidades: Faça um programa que leia o tempo (em segundos) e a aceleração constante de um objeto e imprima sua velocidade a cada segundo até o tempo informado.
import 'dart:io';
void main() {
  while(true){
      print('----- Tabela de velocidades -----');
      stdout.write('Insira o tempo em segundo(s): ');
      String? entradaTempo = stdin.readLineSync();
      stdout.write('Insira a aceleração em metros por segundo(m/s²): ');
      String? entradaAceleracao = stdin.readLineSync();
      stdout.write('Insira a velocidade inicial: ');
      String? entradaVelocidade = stdin.readLineSync();

      try {
        int tempo = int.parse(entradaTempo!);
        double aceleracao = double.parse(entradaAceleracao!);
        double velocidadeInicial = double.parse(entradaVelocidade!);

        double velocidadeConstante;
        print('\n------ A velociade a cada segundo ------');
        for(int i = 0; i <= tempo; i++){
          velocidadeConstante =  velocidadeInicial + aceleracao * i;

          print('No tempo de ${i}s está há ${velocidadeConstante.toStringAsFixed(2)}m/s.');
        }
        
      } catch (e) {
        print('Não foi possível realizar a verificação com os valores inseridos. Tente novamente!');
      }


      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}