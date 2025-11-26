// 9. Filtragem de Emails Válidos (Regra Simples)
// Dada uma lista de strings que supostamente são endereços de email, filtre e colete em uma nova lista 
// apenas os emails que contêm exatamente um caractere '@' e terminam com ".com".
import 'dart:io';
List<String> emails = ['joao.silva@example.com', 'maria.oliveira@example.com', 'pedro123@example.org', 'ana_souza@example.net', 'lucas.rodrigues@example.com'];

void main() {
  while(true){
      List<String> emailValido = emails.where((email) => email.contains('@') && email.contains('.com')).toList();

      emailValido.forEach((valido) => print('Este é um e-mail válido: $valido'));

      stdout.write('\nDeseja encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
  }
}