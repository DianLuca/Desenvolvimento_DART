import "../modules/utils.dart";
import "dart:io";

class Calcular{
    num valor;

    Calcular({required this.valor});

    void verificarPositivo(){
      if (valor < 0) {
        double triplo = valor * 3;
        print('Resultado: ${triplo.toStringAsFixed(2)}');
      } else {
        double dobro = valor * 2;
        print('Resultado: ${dobro.toStringAsFixed(2)}');
      }
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa para encontrar o dobro de um número caso ele seja positivo e o seu triplo caso seja negativo, imprimindo o resultado. 
    while(true){
        acoes.limparTela();

        print('----- Positivo e Negativo -----');
        stdout.write('Insira um número qualquer: ');
        String? entradaAno = stdin.readLineSync();

        dynamic validar = validacoes.verificarNuloVazio(entradaAno);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        if(validarNum != false){
            Calcular calcular = Calcular(valor: validarNum);
            calcular.verificarPositivo();
        }

        acoes.finalizar();
    }
}