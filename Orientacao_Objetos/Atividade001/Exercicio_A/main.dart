import '../modules/utils.dart';
import 'dart:io';

class Operacoes {
  num valor;
  num valor2;

  Operacoes({required this.valor, required this.valor2});

  // A soma, o produto, a subtração, a divisão, o resto da divisão e a divisão inteira
  num adicao(){
    num adicao = valor + valor2;
    return adicao;
  }

  num subtracao(){
    num subtracao = valor - valor2;
    return subtracao;
  }

  num multiplicacao(){
    num multiplicacao = valor * valor2;
    return multiplicacao;
  }

  dynamic divisao(){
    if(valor2 == 0){
      return 'Não é possível realizar divisão por zero!';
    } else {
      num divisao = valor / valor2; // ~/ %
      return divisao;
    }
  }

  dynamic divisaoInteira(){
    if(valor2 == 0){
      return 'Não é possível realizar divisão por zero!';
    } else {
      num divisao = valor % valor2;
      return divisao;
    }
  }

  dynamic divisaoResto(){
    if(valor2 == 0){
      return 'Não é possível realizar divisão por zero!';
    } else {
      num divisao = valor ~/ valor2;
      return divisao;
    }
  }
}

void main(){
  while(true){
    Validacoes validacoes = Validacoes();
    print("\x1B[2J\x1B[0;0H");
    print('---------- OPERAÇÕES ----------');

    stdout.write('Insira o primeiro valor: ');
    String? entradaValor = stdin.readLineSync();

    stdout.write('Insira o segundo valor: ');
    String? entradaValor2 = stdin.readLineSync();

    // Validações
    dynamic verificado = validacoes.verificarNuloVazio(entradaValor);
    dynamic retorno = validacoes.vericarNumeros(verificado);

    dynamic verificado2 = validacoes.verificarNuloVazio(entradaValor2);
    dynamic retorno2 = validacoes.vericarNumeros(verificado2);

    if(retorno != false && retorno2 != false){
      Operacoes operacao = Operacoes(valor: retorno, valor2: retorno2);
      dynamic adicao = operacao.adicao();
      dynamic subtracao = operacao.subtracao();
      dynamic multiplicacao = operacao.multiplicacao();
      dynamic divisao = operacao.divisao();
      dynamic divisaoInteira = operacao.divisaoInteira();
      dynamic resto = operacao.divisaoResto();

      print('\nRESULTADO DAS OPERAÇÕES');
      print('O resultado da adição de ${retorno} + ${retorno2}: ${adicao}');
      print('O resultado da subtração de ${retorno} - ${retorno2}: ${subtracao}');
      print('O resultado da multiplicação de ${retorno} * ${retorno2}: ${multiplicacao}');
      print('O resultado da divisão de ${retorno} / ${retorno2}: ${divisao}');
      print('O resultado do resto da divisão de ${retorno} / ${retorno2}: ${divisaoInteira}');
      print('O resultado da divisão inteira de ${retorno} / ${retorno2}: ${resto}');
    }

    Acoes().finalizar();
  }
}