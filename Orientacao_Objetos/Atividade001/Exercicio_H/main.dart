import "../modules/utils.dart";
import "dart:io";

class Tabuada{
    num valor;

    Tabuada({required this.valor});

    void exibirTabuada(){
      for(int i = 1; i <=10; i++){
      num resultado = valor * i; 
      print('$valor x $i = $resultado');
    }
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que receba um número inteiro. O programa deverá imprimir tabuada de multiplicação deste número.
    while(true){
        acoes.limparTela();

        print('----- Tabuada de Multiplicação -----');

        stdout.write('Insira um número qualquer: ');
        String? entrada = stdin.readLineSync()!.replaceAll(',', '.');

        dynamic validar = validacoes.verificarNuloVazio(entrada);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        Tabuada tabuada = Tabuada(valor: validarNum);
        tabuada.exibirTabuada();

        acoes.finalizar();
    }
}