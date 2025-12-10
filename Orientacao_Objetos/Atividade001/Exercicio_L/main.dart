import "../modules/utils.dart";
import "dart:io";

class Calcular{
    num valorA;
    num valorB;
    num valorC = 0;

    Calcular({required this.valorA, required this.valorB});

    void somarMultiplicar(){
      if(valorA == valorB) {
        print('Valores iguais sempre serão somados.');
        valorC = valorA + valorB;
        print('Resultado: ${valorC.toStringAsFixed(2)}');
      } else {
        print('Valores diferentes sempre serão multiplicados.');
        valorC = valorA * valorB;
        print('Resultado: ${valorC.toStringAsFixed(2)}');
      }
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um algoritmo que leia dois valores inteiros A e B.
    // Se os valores forem iguais deverá somar os dois, caso contrário multiplique
    // A por B. Ao final de qualquer um dos cálculos deve-se atribuir o resultado 
    // para uma variável C e mostrar seu conteúdo na tela.
    while(true){
        acoes.limparTela();
        print('----- Somar valores igual e multiplicar diferentes -----');

        stdout.write('Insira o valor de A: ');
        String? entradaA = stdin.readLineSync()!.replaceAll(',', '.').trim();
        stdout.write('Insira o valor de B: ');
        String? entradaB = stdin.readLineSync()!.replaceAll(',', '.').trim();

        dynamic validarA = validacoes.verificarNuloVazio(entradaA);
        dynamic validarNumA = validacoes.vericarNumeros(validarA);
        
        dynamic validarB = validacoes.verificarNuloVazio(entradaB);
        dynamic validarNumB = validacoes.vericarNumeros(validarB);
        
        if(validarNumA != false && validarNumB != false){
          Calcular calcular = Calcular(valorA: validarNumA, valorB: validarNumB);
          calcular.somarMultiplicar();
        }

        acoes.finalizar();
    }
}