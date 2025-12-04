import 'dart:io';

class Aluno {
  String matricula;
  String nome;
  Map<String, double> notas;

  // Construtor
  Aluno({
    required this.matricula,
    required this.nome,
    required this.notas
  });

  @override
  String toString(){
    // Cálculo da média a partir do maps de notas
    double media = notas.values.reduce((a, b) => a + b) / notas.length;

    // Retorna uma string formatada
    return '''
Boletim Escolar
------------------------------------------------------
Matrícula: $matricula
Nome: $nome
Notas:
  1º Bimestre: ${notas['n1']?.toStringAsFixed(2)}
  2º Bimestre: ${notas['n2']?.toStringAsFixed(2)}
  3º Bimestre: ${notas['n3']?.toStringAsFixed(2)}
  4º Bimestre: ${notas['n4']?.toStringAsFixed(2)}
------------------------------------------------------
Média Final: ${media.toStringAsFixed(2)}
Situação: ${media >= 6 ? 'Aprovado' : 'Reprovado'}
    ''';
  }
}

void main(){
  // Lista para armazenar os alunos cadastrados
  List<Aluno> alunos = [];
  String opcao;

  do {
    stdout.write('\nDigite a matrícula do aluno: ');
    String matricula = stdin.readLineSync()!;

    stdout.write('\nDigite o nome do aluno: ');
    String nome = stdin.readLineSync()!;

    // Para armazenar as 4 notas
    Map<String, double> notas = {};

    // Loop para coletar as notas
    for(int i = 1; i <= 4; i++){
      stdout.write('Digite a nota do ${i}º bimestre: ');
      double nota = double.parse(stdin.readLineSync()!);
      notas['n$i'] = nota;
    }

    // Cria um objeto Aluno usando o construtor
    alunos.add(Aluno(matricula: matricula, nome: nome, notas: notas));

    stdout.write('Deseja cadastrar outro aluno? (S/N)');
    opcao = stdin.readLineSync()!.trim().toUpperCase();

  } while (opcao == 'S');

  print('\n====== Lista de alunos cadastrados =======');
  for (Aluno aluno in alunos) {
    print(aluno.toString());
  }
}