// Faça um programa com entrada de dados para calcular a área de 4 objetos
import 'dart:io';
import 'dart:math';

void main(){
  stdout.write('1 - Quadrado \n2 - Retângulo \n3 - Triângulo \n4 - Círculo \nSelecione uma das opções acima: ');
  String? valor = stdin.readLineSync();

  try{
    double resultado;
    switch(valor){
      case '1':
        print('Área do Quadrado');
        stdout.write('Insira o valor do lado: ');
        String? valor = stdin.readLineSync();

        // Caso o valor seja inserido como: 1,34 ao contrário de 1.34
        String novoValor = valor!.replaceAll(',', '.').trim();
        double areaConvertida = double.parse(novoValor); //casting

        resultado = pow(areaConvertida, 2).toDouble();
        print('A área do quadrado é de: ${resultado.toStringAsFixed(2)}');
        break;
      case '2':
        print('Área do Retângulo: ');
        stdout.write('Insira o valor da base: ');
        String? base = stdin.readLineSync();
        String baseValor = base!.replaceAll(',', '.').trim();
        double baseConvertida = double.parse(baseValor);

        stdout.write('Insira o valor da altura: ');
        String? altura = stdin.readLineSync();
        String alturaValor = altura!.replaceAll(',', '.').trim();
        double alturaConvertida = double.parse(alturaValor);

        resultado = baseConvertida * alturaConvertida;
        print('A área do retângulo é de: ${resultado.toStringAsFixed(2)}');
        break;
      case '3':
        print('Área do Triângulo: ');
        stdout.write('Insira o valor da base: ');
        String? base = stdin.readLineSync();
        String baseValor = base!.replaceAll(',', '.').trim();
        double baseConvertida = double.parse(baseValor);

        stdout.write('Insira o valor da altura: ');
        String? altura = stdin.readLineSync();
        String alturaValor = altura!.replaceAll(',', '.').trim();
        double alturaConvertida = double.parse(alturaValor);

        resultado = (baseConvertida * alturaConvertida) / 2;
        print('A área do triângulo é de: ${resultado.toStringAsFixed(2)}');
        break;
      case '4':
        print('Área do Círculo: ');
        stdout.write('Insira o valor do raio: ');
        String? valor = stdin.readLineSync();

        String novoValor = valor!.replaceAll(',', '.').trim();
        double raioConvertida = double.parse(novoValor);

        resultado = pi * pow(raioConvertida, 2).toDouble();
        print('A área do círculo é de: ${resultado.toStringAsFixed(2)}');
        break;
      default:
        print('A opção não está na lista. Tente novamente.');
    }
  }catch(e){
    print('Insira apenas valores númericos e não nulos e vazios.');
    print('Detalhes: $e');
  }
}