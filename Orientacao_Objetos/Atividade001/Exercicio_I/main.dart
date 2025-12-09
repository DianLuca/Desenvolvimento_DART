import "../modules/utils.dart";
import "dart:io";

class ConversorMoedas{
    num valor;
    String moeda;

    ConversorMoedas({required this.valor, required this.moeda});

    void converter(){
      // Cotação de 10/10/2024

      num dolar = valor / 5.48;
      num euro = valor / 6.31;
      num won = valor /  0.003813;

      print('Com ${valor.toStringAsFixed(2)} "${moeda}" é possível adquirir:');
      print('${dolar.toStringAsFixed(2)} dólares.');
      print('${euro.toStringAsFixed(2)} euros.');
      print('${won.toStringAsFixed(2)} wons.');
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que receba um valor em reais, depois calcule quantos euros, dólares e wons dariam para comprar com esse valor.
    while(true){
        acoes.limparTela();

        print('----- Conversão de valores -----');
        print('O valor inserido será convertido para dólar(EUA), euro(EU) e won(KOR)');

        stdout.write('Insira um valor monetário qualquer: ');
        String? entrada = stdin.readLineSync()!.replaceAll(',', '.');

        // stdout.write('Insira o nome da moeda: ');
        // String? entradaMoeda = stdin.readLineSync() ?? 'moeda não informada';

        dynamic validar = validacoes.verificarNuloVazio(entrada);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        ConversorMoedas conversao = ConversorMoedas(valor: validarNum, moeda: 'Reais'/*entradaMoeda*/);
        conversao.converter();

        acoes.finalizar();
    }
}