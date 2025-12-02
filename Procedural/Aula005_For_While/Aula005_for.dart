import 'dart:io';

void main(){

  print('-'* 70);
  print('FOR SIMPLES \n');
  for(int i = 1; i <= 5; i++) {
    print(i); // Com quebra de linha
  };

  for(int i = 1; i <= 5; i++) {
    stdout.write('$i'); // Sem quebra de linha
  };

  print('');
  print('-'* 70);
  print('LISTAGEM COM FOR\n');
  // Lista do tipo String
  List<String> panteras76 = ['Kelly Garrett', 'Jill Munroe', 'Sabrina Duncan'];
  for(String personagem in panteras76) {
    print(personagem); // Com quebra de linha
  };

  print('-'* 70);
  print('FOR EACH \n');
  // Lista do tipo String
  List<String> panteras = ['Jaclyn Smith', 'Farrah Fawcett', 'Kate Jackson'];
  panteras.forEach((atriz) {
    print(atriz);
  });

  print('-'* 70);
}