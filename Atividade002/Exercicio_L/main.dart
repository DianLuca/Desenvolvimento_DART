// Resfriamento de um líquido: Faça um programa que simule o resfriamento de um líquido a partir de uma temperatura inicial até atingir 
//a temperatura ambiente (25°C). A cada segundo, a temperatura diminui 2%. Imprima a temperatura a cada segundo.
import 'dart:io';
void main(){
  while(true){
      print('----- Contagem regressiva -----');
      stdout.write('Insira o valor a temperatura do líquido (°C): ');
      String? entradaTemperatura = stdin.readLineSync();
      
      try {
        double temperatura = double.parse(entradaTemperatura!);
        double temperaturaResfriando;
        int tempoResfriando = 0;

        while(true){
          if(temperatura > 25){
            temperaturaResfriando = (2 / 100) * temperatura;

            temperatura -= temperaturaResfriando;
          } else {
            print('----- Líquido resfriado! -----');
            print('A temperatura após o resfriamento é de: ${temperatura.toStringAsFixed(2)}°C.');
            print('Tempo total para resfriamento: ${tempoResfriando}s.'); 
            break;
          }

          tempoResfriando += 1;
          print('A temperatura ainda está em ${temperatura.toStringAsFixed(2)}°C, resfriando!');
          sleep(Duration(seconds: 1)); // sleep() funciona de forma parecida com Future.delayed() do exercício J,
          // porém é interno da biblioteca dart:io e não exije execução assíncrona
        };

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