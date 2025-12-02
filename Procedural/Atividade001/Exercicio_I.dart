// Faça um programa que receba um número inteiro. O programa deve exibir a tabuada de multiplicação deste número.
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro: ');
  String? numero = stdin.readLineSync();

  try{
    print('TABUADA DE MULTIPLICAÇÃO DE $numero');
    int valor = int.parse(numero!);

    for(int i = 1; i <=10; i++){
      int resultado = valor * i; 
      print('$valor x $i = $resultado');
    }
  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}