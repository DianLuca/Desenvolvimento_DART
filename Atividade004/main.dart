import 'dart:io';
// Estrutura {"Nome do aluno": "notas": "10, 10, 10, 10", "situacao": "aprovado || reprovado"}
List<Map<String, List<double>>> alunos = [
    {'Ana': [8.5, 9.0, 7.5, 1]},
    {'Bruno': [6.0, 7.2, 8.1, 3]},
    {'Carla': [9.8, 9.5, 10.0, 6]},
    {'Diego': [5.5, 6.0, 7.0, 1]},
    {'Eduarda': [7.8, 8.3, 8.9, 4]},
  ];

void main(){
  while(true){
    print('------ Sistema de Notas e Desempenho Escolar ------');
    print('1 - Exibir lista de alunos\n2 - Cadastrar um novo aluno \n3 - Sair');
    stdout.write('\nDigite a opção desejada: ');
    String? opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        print('LISTA DE ALUNOS');
        if(!alunos.isEmpty){

          int i = 1;
          String situacao = '';
          for (var aluno in alunos) {
            aluno.forEach((nome, notas) {
              double soma = notas.reduce((soma, nota) => soma + nota);
              double media = soma / notas.length;
              if(media >= 7){
                situacao = 'Aprovado';
              } else if (media >= 5){
                situacao = 'Em recuperação';
              } else {
                situacao = 'Reprovado';
              }
              print('$i - Nome: $nome Média: ${media.toStringAsFixed(2)} Situação: $situacao\n');
            });
            i += 1;
          }
        } else { 
          print('\nNão há alunos cadastrados!');
        }
        break;
      case '2':
        List<double> notas = [];
        stdout.write('Insira o nome do aluno: ');
        String? nome = stdin.readLineSync();
        for(int i = 0; i < 4; i++){
          stdout.write('Insira a nota do ${i + 1}º trimestre: ');
          String? notaEntrada = stdin.readLineSync();
          double nota = double.parse(notaEntrada!);
          notas.add(nota);
        }
        alunos.add({nome!: notas});
        print('\n O aluno: $nome e suas notas: $notas. Foram cadastrados com sucesso!');
        break;
      case '3':
        print('MENU DE ENCERRAMENTO:');
        break;
      default:
        print('Opção não encontrada!');
        break;
    }

    if(opcao == '3'){
      stdout.write('\nDeseja realmente encerrar o sistema(s - sim | n - não)? ');
      String? sair = stdin.readLineSync();

      if(sair != null && sair.trim().isNotEmpty && sair == 's'){
          print('Programa encerrado!');
          break;
      }
    }
  }
    
}