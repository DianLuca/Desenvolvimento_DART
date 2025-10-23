// Verificação de ano bissexto: Faça um programa que receba um ano e verifique se ele é bissexto, exibindo a resposta.
import 'dart:io';
void main() {
  while(true){
      print('----- Verificação de ano bissexto -----');
      stdout.write('Insira um ano qualquer: ');
      String? entrada = stdin.readLineSync();

      try {
        int ano = int.parse(entrada!);

        if((ano %4 == 0) && (ano % 100 != 0) || (ano % 400 == 0)){
          print('O ano $ano é um ano bissexto');
        } else{
          print('O ano $ano não é um ano bissexto');
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