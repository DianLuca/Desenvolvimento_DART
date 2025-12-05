// Faça um programa que receba um valor em reais , depois calcule quantos euros, dólares e wons dariam para comprar com esse valor. 
import 'dart:io';

void main(){
  stdout.write('Insira um número inteiro: ');
  String? valor = stdin.readLineSync();

  try{
    print('TABUADA DE MULTIPLICAÇÃO DE $valor');
    double real = double.parse(valor!);

    // Cotação de 10/10/2024
    double dolar = real / 5.48;
    double euro = real / 6.31;
    double won = real /  0.003813;

    print('Com ${real.toStringAsFixed(2)} reais é possível adquirir:');
    print('${dolar.toStringAsFixed(2)} dólares.');
    print('${euro.toStringAsFixed(2)} euros.');
    print('${won.toStringAsFixed(2)} wons.');
    
  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}