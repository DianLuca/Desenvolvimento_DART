// Conversão de energia: Faça um programa que leia um valor em joules e converta para calorias (1 caloria = 4,184 joules), exibindo os resultados.
import 'dart:io';
void main() {
  while(true){
      print('----- Conversão de energia (Joule -> Calorias) -----');
      stdout.write('Insira o valor em Joule: ');
      String? entradaJoule = stdin.readLineSync();

      try {
        double joule = double.parse(entradaJoule!);

        double energiaMecanica;
        
          energiaMecanica =  joule / 4.184;

          print('O valor de ${joule} joules corresponde a ${energiaMecanica.toStringAsFixed(4)} calorias.');
        
        
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