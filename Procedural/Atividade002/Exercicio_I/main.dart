// Classificação de ângulos: Faça um programa que receba um ângulo em graus e classifique-o como agudo (<90°), reto (90°), obtuso (>90° e <180°) ou rente (180°).
import 'dart:io';
void main() {
  while(true){
      print('----- Classificação de ângulos -----');
      stdout.write('Insira o valor do ângulo: ');
      String? entradaAngulo = stdin.readLineSync();
      
      try {
        double angulo = double.parse(entradaAngulo!);
        if(angulo <= 0){
          print('Você possuí um ângulo nulo');
        } else if(angulo < 90){
          print('Você possuí um ângulo agudo');
        } else if (angulo == 90){
          print('Você possuí um ângulo reto');
        } else if((angulo < 180)){
          print('Você possuí um ângulo obtuso');
        } else if (angulo == 180){
          print('Você possuí um ângulo rento');
        } else if (angulo < 360){
          print('Você possuí um ângulo côncavo');
        } else if (angulo == 360) {
          print('Você possuí uma volta completa');
        } else {
          print('Você possuí um valor maior do que 360, portanto mais de uma volta completa.');
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