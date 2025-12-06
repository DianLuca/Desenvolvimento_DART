import "../modules/utils.dart";
import "dart:io";

class Formatar{
    num valor;
    num valor2;

    Formatar({required this.valor, required this.valor2});

    void divisaoFormatada(){
        double divisao = valor / valor2;
        print('$valor ÷ $valor2 = ${divisao.toStringAsFixed(4)}.');
    }


}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que receba e divida 2 números. A saída da divisão precisará ser formatada com 4 casas decimais.
    while(true){
        acoes.limparTela();
        print('----- Divisão com 4 casas decimais -----');

        stdout.write('Insira o primeiro valor: ');
        String? entrada = stdin.readLineSync();

        stdout.write('Insira o segundo valor: ');
        String? entrada2 = stdin.readLineSync();

        dynamic verificar = validacoes.verificarNuloVazio(entrada);
        dynamic valorVerificado = validacoes.vericarNumeros(verificar);

        dynamic verificar2 = validacoes.verificarNuloVazio(entrada2);
        dynamic valorVerificado2 = validacoes.vericarNumeros(verificar2);

        if(valorVerificado != false && valorVerificado2 != false){
            Formatar formatar = Formatar(valor: valorVerificado, valor2: valorVerificado2);
            formatar.divisaoFormatada();
        }

        acoes.finalizar();
    }
}