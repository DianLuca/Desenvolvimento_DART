import 'dart:io';

// Função para simular envio de email
void enviarEmail(String destinatario, String assunto, String msg) {
  print('=' * 70);
  print('Enviado email para: $destinatario');
  print('Assunto: $assunto');
  print('Corpo: $msg');
  print('-' * 70);
  print('Email enviado com sucesso!');
  print('-' * 70);
  print('');
}

void main() {
  print('\nEXEMPLO DE FUNÇÃO VOID COM VALIDAÇÃO DE DESTINATÁRIO');
  print('-' * 70);

  while(true) {
    // Leitura do destinatário
    stdout.write('Digite o destinatário: ');
    String destinatario = (stdin.readLineSync() ?? '').trim();

    if(destinatario.isEmpty) {
      print('Erro: Destinatário não pode ficar vazio! Tente novamente;');
      continue; // Volta para o início do loop principal
    }

    // Leitura do assunto
    stdout.write('Digite o assunto: ');
    String assunto = (stdin.readLineSync() ?? '').trim();

    if(assunto.isEmpty) assunto = 'Sem assunto';

    // Leitura da mensagem
    stdout.write('Digite o corpo da mensagem: ');
    String msg = (stdin.readLineSync() ?? '').trim();
    if(msg.isEmpty) msg = 'Mensagem vazia';

    // Enviar email
    enviarEmail(destinatario, assunto, msg);

    // Perguntar se deseja continuar
    while(true) {
      stdout.write('Deseja enviar outro e-mail? (s/n): ');
      String resposta = (stdin.readLineSync() ?? '').trim().toLowerCase();

      if(resposta == 's'){
        break;
      } else if(resposta == 'n') {
        print('Encerramento o programa...');
        return;
      } else {
        print('Resposta inválida! Digite "s" para sim ou "n" para não.');
      }
    }
    print('');
  }
}