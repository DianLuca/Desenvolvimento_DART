import "../modules/utils.dart";
import "dart:io";

class Calcular{
    num valor;

    Calcular({required this.valor});

    void converter(){

      double centimetros = valor * 100;
      double quilometros = valor / 1000;

      print('${valor.toStringAsFixed(2)}m corresponde: \n${centimetros.toStringAsFixed(0)}cm. \n${quilometros.toStringAsFixed(3)}Km.');
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa para converter medidas
    while(true){
        acoes.limparTela();

        print('----- Converter Medidas -----');

        stdout.write('Insira um número qualquer em metros: ');
        String? entrada = stdin.readLineSync()!.replaceAll(',', '.');

        dynamic validar = validacoes.verificarNuloVazio(entrada);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        Calcular calcular = Calcular(valor: validarNum);
        calcular.converter();

        acoes.finalizar();
    }
}