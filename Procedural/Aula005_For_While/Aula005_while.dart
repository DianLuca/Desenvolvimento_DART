import 'dart:io';

void main() {
    // Variável de controle do laço
    int i = 1;

    // ------------------------
    // Estrutura de repetição while 
    // Enquanto a condição (i <= 5) for verdadeira, 
    // o bloco de código será executado.
    while (i <= 5) {
        stdout.write('$i '); // Imprime sem quebra a linha

        /* IMPORTANTE: 
        Se não incrementarmos a variável 'i', 
        a condição nunca mudará e o loop se tornará INFINITO. */
        i++;
    }
}