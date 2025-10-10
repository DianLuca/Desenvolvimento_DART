// Faça um programa para conversão de temperaturas celsius e Fahrenheit e vice-versa.
import 'dart:io';

void main(){
  stdout.write('1 - Celsius -> Fahrenheit  \n2 - Fahrenheit -> Celsius \nSelecione uma das opções acima: ');
  String? selecao = stdin.readLineSync();
  try{
    double temperatura;
    switch(selecao) {
      case '1':
        print('Celsius -> Fahrenheit');
        stdout.write('Insira a temperatura em Celsius: '); 
        String? numeroA = stdin.readLineSync();
        String celsius = numeroA!.replaceAll(',', '.').trim();
        double celsiusValor = double.parse(celsius);

        temperatura = (celsiusValor * (9/5)) + 32;
        print('A temperatura $celsius°C corresponde a $temperatura°F');
        break;
      case '2':
        print('Fahrenheit -> Celsius');
        stdout.write('Insira a temperatura em Fahrenheit: '); 
        String? numeroA = stdin.readLineSync();
        String fahrenheit = numeroA!.replaceAll(',', '.').trim();
        double fahrenheitValor = double.parse(fahrenheit);

        temperatura = (fahrenheitValor - 32) * (5/9);
        print('A temperatura $fahrenheit°F corresponde a $temperatura°C');
        break;
      default:
        print('Nenhuma opção válida selecionada!');
        break;
    }

  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}