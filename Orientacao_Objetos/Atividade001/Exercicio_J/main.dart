import "../modules/utils.dart";
import "dart:io";
import 'dart:math';

Validacoes validacoes = Validacoes();

class Calcular{
    num base;
    num altura;

    Calcular({required this.base, required this.altura});

    void calcularAreaQuadrado(){

      num resultado = pow(base, 2).toDouble();
      print('A área do quadrado é de: ${resultado.toStringAsFixed(2)}');
      // num resultado;
    }

    void calcularArea(objeto){
      print('Área do Quadrado');

      switch(objeto){
        case '1':
          calcularAreaQuadrado();
          break;
        default:
          print('A opção não está na lista. Tente novamente.');
          break;
      }
    }
}

void main(){
    var acoes = Acoes();

    // Faça um programa com entrada de dados para calcular a área de 4 objetos.
    while(true){
        acoes.limparTela();

        stdout.write('1 - Quadrado \n2 - Retângulo \n3 - Triângulo \n4 - Círculo \nSelecione uma das opções acima: ');
        String? objeto = stdin.readLineSync();

        stdout.write('Insira o valor do lado (ou Base): ');
        String? entradaBase = stdin.readLineSync()!.replaceAll(',', '.');
        stdout.write('Insira o valor do lado (ou Altura): ');
        String? entradaAltura = (stdin.readLineSync() ?? '0');
        entradaAltura..replaceAll(',', '.');

        dynamic validarBase = validacoes.verificarNuloVazio(entradaBase);
        dynamic validarNumBase = validacoes.vericarNumeros(validarBase);
        
        dynamic validarAltura = validacoes.verificarNuloVazio(entradaAltura);
        dynamic validarNumAltura = validacoes.vericarNumeros(validarAltura);
        
        if(validarNumBase != false && validarNumAltura != false){
          Calcular calcular = Calcular(base: validarNumBase, altura: validarNumAltura);
          calcular.calcularArea(objeto);
        }

        acoes.finalizar();
    }
}