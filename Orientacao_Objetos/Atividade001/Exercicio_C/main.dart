import "../modules/utils.dart";
import "dart:io";

class Calcular{
    num nota = 0;
    List<dynamic> notas = [];

    Calcular();

    void calcularMedia(){
        num somaNotas = 0;

        for(int nota in notas){
            somaNotas += nota;
        }

        double media = somaNotas / notas.length;
        
        print('\nA média das ${notas.length} notas adicionadas é: ${media.toStringAsFixed(2)}.');
        
        // Após o cálculo a lista deve ser limpa para não ficar 'lixo' para uma próxima operação
        notas.clear();
    }

    void adicionarNota(nota){
        notas.add(nota);
    }
}

void main(){
    var acoes = Acoes();
    Validacoes validacoes = Validacoes();

    // Faça um programa que peça 4 notas com  entrada de dados. O programa deverá calcular a média das notas digitadas.
    while(true){
        acoes.limparTela();
        Calcular calcular = Calcular();

        print('----- Cálculo de Média -----');

        for(int i = 1; i <= 4; i++){
            stdout.write('Insira a ${i}ª nota: ');
            String? nota = stdin.readLineSync();

            dynamic verificar = validacoes.verificarNuloVazio(nota);
            dynamic retorno = validacoes.vericarNumeros(verificar);


            if(retorno != false){
                calcular.adicionarNota(retorno);
            } else {
                i--;
            }

        }

        calcular.calcularMedia();

        acoes.finalizar();
    }
}