// Números primos no intervalo: Faça um programa que receba dois números inteiros A e B e imprima todos os números primos entre A e B (inclusive).
// Obrigatório: -  Elementos obrigatórios: Entrada de dados;  Tratamento Nullsafety ; Validação de Nulo;  Estrutura de Repetição While; Interação 
//do usuário para continuar ou terminar o programa.
import 'dart:io';

void main() {
    while(true){
        print('----- NÚMEROS PRIMOS -----');
        stdout.write('Insira o valor inicial: ');
        String? valorInicio = stdin.readLineSync();
        stdout.write('Insira o valor final: ');
        String? valorFim = stdin.readLineSync();
        
        try {
            int inicio = int.parse(valorInicio!);
            int fim = int.parse(valorFim!);

            for(int i = inicio; i <= fim; i++){
                int j;
                for(j = 2; j < i; j++){
                    if (i % j == 0){
                        break;
                    }
                };

                if(j == i){
                    // print(i);
                    stdout.write('${i} | ');
                }
            }
        } catch (e) {
            print('Não foi possível realizar a verificação com os valores inseridos. Tente novamente!');
        }


        print('');
        stdout.write('Deseja encerrar o sistema(s - sim | n - não)? ');
        String? sair = stdin.readLineSync();

        if(sair != null && sair.trim().isNotEmpty && sair == 's'){
            print('Programa encerrado!');
            break;
        }
    }
}