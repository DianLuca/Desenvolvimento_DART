// 9. Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email, filtre e colete em uma nova lista 
// apenas os emails que contêm exatamente um caractere '@' e terminam com ".com".
import 'dart:io';

void finalizar() {
  stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
  String? sair = stdin.readLineSync();

  if(sair != null && sair.trim().isNotEmpty && sair == 's'){
    print('Programa encerrado!');
    exit(0);
  }
}

String validarEmail({
  required String email
}){
  if(email.contains("@") && email.contains('.com')){
    return "\nO e-mail inserido é válido!";
  }
  return "\nO e-mail inserido não é válido!";
}
void main() {
  while(true){
    print("\x1B[2J\x1B[0;0H");
    print('----- Verificador de E-mail -----');
    stdout.write('Insira um e-mail para verificação: ');
    String? email = stdin.readLineSync();

    String resposta = validarEmail(email: email!);
    print(resposta);

    finalizar();
  }
}