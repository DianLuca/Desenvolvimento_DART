import "../modules/utils.dart";
import "dart:io";

class Calcular{
    num ano;

    Calcular({required this.ano});

    void calcularIdade(){
        num anoAtual = DateTime.now().year;

        if(ano <= anoAtual){
            num idade = anoAtual - ano;
            print('Sua idade é de: ${idade} anos.');
        } else {
            print('O ano inserido deve ser menor ou igual ao atual: ${anoAtual}');
        }
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que peça um ano qualquer. O programa deverá calcular e imprimir a idade.
    while(true){
        acoes.limparTela();

        print('---------- CALCULAR IDADE ----------');

        stdout.write('Insira seu ano de nascimento: ');
        String? entradaAno = stdin.readLineSync();

        dynamic validar = validacoes.verificarNuloVazio(entradaAno);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        if(validarNum != false){
            Calcular calcular = Calcular(ano: validarNum);
            calcular.calcularIdade();
        }

        acoes.finalizar();
    }
}