import 'dart:io';

class Triangulo {
  // Atributos
  double base;
  double altura;

  // Construtor
  Triangulo(this.base, this.altura);

  double calcularArea(){
    return (base * altura) / 2;
  }
}

void main() {
  // Entrada de dados
  stdout.write('Digite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  // Instanciando o objeto
  Triangulo triangulo = Triangulo(base, altura);
  double area = triangulo.calcularArea();

  print('A área do triângulo é: $area');
  print('-' * 70);
}