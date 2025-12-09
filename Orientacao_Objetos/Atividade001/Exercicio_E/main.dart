import "../modules/utils.dart";
import "dart:io";

class Perspectiva{
    num valor;

    Perspectiva({required this.valor});

    void calcularAntecessorSucessor(){
      num sucessor = valor + 1;
      num antecessor = valor - 1;

      print('O antecessor de ${valor}: ${antecessor} e o sucessor: ${sucessor}');
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.
    while(true){
        acoes.limparTela();

        print('----- Sucessor e Antecessor -----');

        stdout.write('Insira um número inteiro: ');
        String? entrada = stdin.readLineSync();

        dynamic validar = validacoes.verificarNuloVazio(entrada);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        Perspectiva perspectiva = Perspectiva(valor: validarNum);
        perspectiva.calcularAntecessorSucessor();

        acoes.finalizar();
    }
}