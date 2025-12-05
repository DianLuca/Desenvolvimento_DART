import 'dart:io';

class Validacoes {
  String valor;

  Validacoes({this.valor = ''});

  dynamic verificarNuloVazio(valor){
    if(valor != null && valor.trim().isNotEmpty){
      // print('Valor inserido: "${valor}".');
      return valor;
    }
  }

  dynamic vericarNumeros(numero){
    try {
      numero = num.parse(numero);
      return numero;
    } catch (e) {
      print('Não foi possível realizar a operação! Um dos valores inseridos não é numérico!');
      return false;
    }
  }
}

class Acoes{

  Acoes();

  void finalizar() {
    stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
    String? sair = stdin.readLineSync();

    if(sair != null && sair.trim().isNotEmpty && sair == 's'){
        print('Programa encerrado!');
        exit(0);
    }
  }

  void limparTela() {
    print("\x1B[2J\x1B[0;0H");
  }
}