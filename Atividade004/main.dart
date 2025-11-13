import 'dart:io';
// Estrutura {"Nome do aluno": "notas": [10, 10, 10, 10]"}
List<Map<String, List<double>>> alunos = [
  {'ANA': [6.0, 7.2, 8.1, 7]},
  {'BRUNO': [6.0, 7.2, 8.1, 3]},
  {'CARLA': [9.8, 9.5, 10.0, 6]},
  {'DIEGO': [5.5, 6.0, 7.0, 1]},
  {'EDUARDA': [7.8, 8.3, 8.9, 4]},
];

void main() {
  while (true) {
    print("\x1B[2J\x1B[0;0H");
    print('--------- Sistema de Notas e Desempenho Escolar ---------');
    print(
      '1 - Exibir lista de alunos \n2 - Cadastrar um novo aluno \n3 - Atualizar Cadastro \n4 - Sair',
    );
    stdout.write('\nDigite a opção desejada: ');
    String? opcaoEntrada = stdin.readLineSync();
    String opcao = opcaoEntrada!.trim();

    switch (opcao) {
      case '1':
        print("\x1B[2J\x1B[0;0H");
        print('--------- LISTA DE ALUNOS ---------');
        if (!alunos.isEmpty) {
          int i = 1;
          String situacao = '';
          double media = 0;
          for (var aluno in alunos) {
            aluno.forEach((nome, notas) {
              if (notas.isNotEmpty) {
                double soma = notas.reduce((soma, nota) => soma + nota);
                media = soma / notas.length;
              }

              if (media >= 7) {
                situacao = 'Aprovado';
              } else if (media >= 5) {
                situacao = 'Em recuperação';
              } else {
                situacao = 'Reprovado';
              }
              String nomeAluno = (nome.isEmpty) ? 'sem nome' : nome;
              print(
                '$i - Nome: ${nomeAluno.toUpperCase()}  |   Média: ${media.toStringAsFixed(2)}  |  Situação: $situacao\n',
              );
            });
            i += 1;
          }
        } else {
          print('\nNão há alunos cadastrados!');
        }
        stdout.write('\nPressione "Enter" para continuar: ');
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '2':
        print("\x1B[2J\x1B[0;0H");
        print('--------- CADASTRO DE NOVOS ALUNOS ---------');
        List<double> notas = [];
        notas.clear();
        double nota;
        stdout.write('Insira o nome do aluno: ');
        String? nome = stdin.readLineSync();

        if(nome != null && nome.isNotEmpty){
          for (int i = 0; i < 4; i++) {
            try {
              stdout.write('Insira a nota do ${i + 1}º trimestre: ');
              String? notaEntrada = stdin.readLineSync();
              nota = (notaEntrada!.isEmpty
                  ? 0
                  : double.parse(notaEntrada.trim()));
            } catch (e) {
              print('Houve um erro em uma das notas inseridas. Tente novamente!');
              break;
            }
            notas.add(nota);
          }
          if(notas.length == 4){
            alunos.add({nome.trim().toUpperCase(): notas});
            print('\nO aluno cadastrado com sucesso!');
          }
        } else {
          print('O nome do aluno não pode ser vazio! Tente novamente.');
        }
        stdout.write('\nPressione "Enter" para continuar: ');
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '3':
        print("\x1B[2J\x1B[0;0H");
        print('--------- ATUALIZAÇÃO CADASTRAL ---------');
        stdout.write('Qual o nome do aluno que deseja atualizar: ');
        String? nomeEntrada = stdin.readLineSync();
        String nome = nomeEntrada!.toUpperCase().trim();

        for (var aluno in alunos) {
          if (aluno.containsKey(nome)) {
            List<double> novasNotas = [];
            print('O $nome existe na lista!');
            for (int i = 0; i < 4; i++) {
              double nota;
              stdout.write('Insira a nota do ${i + 1}º trimestre: ');
              try {
                String? notaEntrada = stdin.readLineSync();
                nota = (notaEntrada!.isEmpty
                    ? 0
                    : double.parse(notaEntrada.trim()));
              } catch (e) {
                print(
                  'Houve um erro em uma das notas inseridas. Tente novamente!',
                );
                break;
              }
              novasNotas.add(nota);
            }
            aluno['$nome'] = novasNotas;
            print(
              'As notas do aluno(a): $nome foram atualizadas para ${aluno['$nome']}.',
            );
            break;
          }
        }
        print('O $nome não existe na lista! Tente novamente.');
        stdout.write('\nPressione "Enter" para continuar: ');
        stdin.readLineSync();
        print("\x1B[2J\x1B[0;0H");
        break;
      case '4':
        print('--------- MENU DE ENCERRAMENTO ---------');
        break;
      default:
        print('Opção não encontrada!');
        break;
    }

    if (opcao == '4') {
      stdout.write(
        '\nDeseja realmente encerrar o sistema(s - sim | n - não)? ',
      );
      String? sair = stdin.readLineSync();

      if (sair != null && sair.trim().isNotEmpty && sair == 's') {
        print("\x1B[2J\x1B[0;0H");
        print('Programa encerrado!');
        break;
      }
    }
  }
}
