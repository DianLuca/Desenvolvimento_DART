import "../modules/utils.dart";
import "dart:io";

class Calcular{
    
    num valor;

    Calcular({required this.valor});

    void calcularDobroTriplo(){
      num dobro = valor * 2;
      num triplo = valor * 3;

      print('O dobro e o triplo de ${valor} são respectivamente: ${dobro.toStringAsFixed(2)} e ${triplo.toStringAsFixed(2)}.');
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que receba um número qualquer e calcule o dobro e o triplo desse número.
    while(true){
        acoes.limparTela();

        print('----- Dobro e o Triplo -----');

        stdout.write('Insira um número inteiro: ');
        String? entrada = stdin.readLineSync()!.replaceAll(',', '.');

        dynamic validar = validacoes.verificarNuloVazio(entrada);
        dynamic validarNum = validacoes.vericarNumeros(validar);

        Calcular calcular = Calcular(valor: validarNum);
        calcular.calcularDobroTriplo();

        acoes.finalizar();
    }
}