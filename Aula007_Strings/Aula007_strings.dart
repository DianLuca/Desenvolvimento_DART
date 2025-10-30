void main() {
  // String base
  String frase = 'Gal Gadot! My true love!';

  // length -> tamanho da string
  int tamanhoString = frase.length;

  // toUpperCase() -> tudo maiúsculo
  String fraseMaiuscula = frase.toUpperCase();

  // toUpperCase() -> tudo minúsculo
  String fraseMinuscula = frase.toLowerCase();

  // contains() -> verifica se um trecho está no código
  bool contemGal = frase.contains('Gal');
  bool contemBatman = frase.contains('Batman');

  // substring() -> recorta parte da string (início, fim)
  String pedaco = frase.substring(0, 9);

  // replaceAll() -> substitui todas as ocorrências
  String substituida = frase.replaceAll('love', 'paixão');

  List<String> palavras = frase.split(' ');

  // trim() -> remove os espaços extras no início e fim
  String comEspaco = '     Gal Gadot       ';
  String semEspaco = comEspaco.trim();

  // Saída formatada ---------------
  print('-' * 70);
  print('Frase original: $frase');
  print('=' * 70);
  print('Tamanho da frase: $tamanhoString');
  print('Maiúscula: $fraseMaiuscula');
  print('Minúscula: $fraseMinuscula');
  print('-' * 70);
  print('Contém "Gal"? $contemGal');
  print('Contém "Batman"? $contemBatman');
  print('-' * 70);
  print('Substring (0 a 9): $pedaco');
  print('PeplaceAll (0 a 9): $substituida');
  print('-' * 70);
  print('Split em palavras: $palavras');
  print('Trim antes: $comEspaco');
  print('Trim depois: $semEspaco');
  print('-' * 70);
}