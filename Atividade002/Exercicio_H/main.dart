// Cálculo de velocidade média: Faça um programa que receba as distâncias percorridas a cada intervalo de tempo e calcule a velocidade média total do percurso.
import 'dart:io';
void main() {
  while(true){
      print('----- Cálculo de velocidade média -----');
      stdout.write('Insira o valor em distância inicial em metros: ');
      String? entradaDistanciaInicial = stdin.readLineSync();
      stdout.write('Insira o valor em distância final em metros: ');
      String? entradaDistanciaFinal = stdin.readLineSync();
      stdout.write('Insira o valor em tempo inicial em segundos: ');
      String? entradaTempoInicial = stdin.readLineSync();
      stdout.write('Insira o valor em tempo final em segundos: ');
      String? entradaTempoFinal = stdin.readLineSync();

      try {
        double distanciaInicial = double.parse(entradaDistanciaInicial!);
        double distanciaFinal = double.parse(entradaDistanciaFinal!);
        int tempoInicial = int.parse(entradaTempoInicial!);
        int tempoFinal = int.parse(entradaTempoFinal!);

        double velocidadeMedia;

        // for(int i = tempoInicial; i <= numeroIntervalos; i ++){ // Números de intervalos para somar o total das distâncias e o tempo gasto em cada uma
          
        // }

        velocidadeMedia = (distanciaFinal - distanciaInicial)/(tempoFinal - tempoInicial); // Fórmula de velocidade média
        print('A velocidade média: ${velocidadeMedia}m/s.');
        
        
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