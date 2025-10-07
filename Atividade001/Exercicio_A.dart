// Faça um programa que exiba "Olá Mundo" na tela.
import 'dart:io';
void main(){
  print('--- Mensagem de Boas-vindas! ---');
  stdout.write('Insira um texto qualquer: ');

  String? entrada =  stdin.readLineSync();

  entrada = (entrada ?? '').isEmpty ? 'Mundo' : entrada;

  print('-' * 30);
  print('Olá $entrada!');
}