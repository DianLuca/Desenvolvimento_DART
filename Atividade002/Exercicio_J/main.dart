// Contagem regressiva: Faça um programa que receba um número inteiro positivo e faça uma contagem regressiva até zero, imprimindo cada número.
import 'dart:io';
import 'dart:async';
void main() async{
  while(true){
      print('----- Contagem regressiva -----');
      stdout.write('Insira o valor inteiro em segundos: ');
      String? entradaSegundos = stdin.readLineSync();
      
      try {
        int segundos = int.parse(entradaSegundos!);

        for(int i = segundos; i >= 0; i--){
            print('Contagem regressiva: ${i}s.'); 
            await Future.delayed(Duration(seconds: 1)); // Classe e função interna da biblioteca dart:async 
            // que permite o código executar a cada segundo, definindo tempo para executar novamente
        };

        print('Tempo esgotado!');
        
        
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