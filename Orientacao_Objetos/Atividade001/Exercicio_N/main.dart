import "../modules/utils.dart";
import "dart:io";

class Calcular{
    num valor;
    num resultado = 0;

    Calcular({required this.valor});

    void verificarPositivo(){
      if (valor % 2 == 0) {
        resultado = valor + 5;
        print('Resultado: $resultado');
      } else {
        resultado = valor + 8;
        print('Resultado: $resultado');
      }
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que leia uma variável e some 5 caso seja par ou some 8 caso seja ímpar, imprimir o resultado desta operação.
    while(true){
        acoes.limparTela();

        print('----- Par ou Ímpar -----');
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