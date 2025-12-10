import "../modules/utils.dart";
import "dart:io";

class Verificar{
    num valor;

    Verificar({required this.valor});

    void verificarParImpar(){
      if (valor % 2 == 0) {
        print('O $valor é par.');
      } else {
        print('O $valor é ímpar.');
      }
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa para receber um número qualquer e informar na tela se é par ou ímpar. 
    while(true){
        acoes.limparTela();

        print('----- Par ou Ímpar -----');
        stdout.write('Insira um número qualquer: ');
        String? entradaAno = stdin.readLineSync();

        dynamic validar = validacoes.verificarNuloVazio(entradaAno);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        if(validarNum != false){
            Verificar verificar = Verificar(valor: validarNum);
            verificar.verificarParImpar();
        }

        acoes.finalizar();
    }
}