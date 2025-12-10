import "../modules/utils.dart";
import "dart:io";
import 'dart:math';

Validacoes validacoes = Validacoes();

class Calcular{
    num base;
    num altura;
    num resultado = 0;

    Calcular({required this.base, required this.altura});

    void calcularAreaQuadrado(){
      resultado = pow(base, 2).toDouble();
      print('A área do quadrado é de: ${resultado.toStringAsFixed(2)}');
    }

    void calcularAreaRetangulo(){
      resultado = base * altura;
      print('A área do retângulo é de: ${resultado.toStringAsFixed(2)}');
    }

    void calcularAreaTriangulo(){
      resultado = (base * altura) / 2;
      print('A área do retângulo é de: ${resultado.toStringAsFixed(2)}');
    }

    void calcularAreaCirculo(){
      resultado = pi * pow(base, 2).toDouble();
      print('A área do círculo é de: ${resultado.toStringAsFixed(2)}');
    }

    void calcularArea(objeto){

      switch(objeto){
        case '1':
          print('Área do Quadrado');
          calcularAreaQuadrado();
          break;
        case '2':
          print('Área do Retângulo');
          calcularAreaRetangulo();
          break;
        case '3':
          print('Área do Triângulo');
          calcularAreaTriangulo();
          break;
        case '4':
          print('Área do Círculo: ');
          calcularAreaCirculo();
          break;
        default:
          stdout.write('A opção não está na lista. Pressione "Enter" para continuar: ');
          stdin.readLineSync();
          break;
      }
    }
}

void main(){
    var acoes = Acoes();

    // Faça um programa com entrada de dados para calcular a área de 4 objetos.
    while(true){
        acoes.limparTela();

        print('----- Calcular a Área -----');
        stdout.write('1 - Quadrado \n2 - Retângulo \n3 - Triângulo \n4 - Círculo \n5 - Sair \nSelecione uma das opções acima: ');
        String? opcao = stdin.readLineSync();

        if(opcao == '5'){
          acoes.finalizar();
        }

        if(opcao != ''){
          stdout.write('Insira o valor da base (ou Raio): ');
          String? entradaBase = stdin.readLineSync()!.replaceAll(',', '.').trim();
          stdout.write('Insira o valor do altura (ou digite 0): ');
          String? entradaAltura = stdin.readLineSync()!.replaceAll(',', '.').trim();

          dynamic validarBase = validacoes.verificarNuloVazio(entradaBase);
          dynamic validarNumBase = validacoes.vericarNumeros(validarBase);
          
          dynamic validarAltura = validacoes.verificarNuloVazio(entradaAltura);
          dynamic validarNumAltura = validacoes.vericarNumeros(validarAltura);
          
          if(validarNumBase != false && validarNumAltura != false){
            Calcular calcular = Calcular(base: validarNumBase, altura: validarNumAltura);
            calcular.calcularArea(opcao);
          }

          stdout.write('Pressione "Enter" para continuar: ');
          stdin.readLineSync();
        } else {
          stdout.write('Selecione um dos objetos para ser calculado. Pressione "Enter" para continuar: ');
          stdin.readLineSync();
        }
    }
}