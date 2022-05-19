void main(List<String> args) {
  // print('Hello world!');

  // int x = 3;
  // print(x.isEven);

  // print(x.gcd(9));

  // int y = int.parse('9');
  // print(y);

  // String nome = 'ViniciusTakeo';

  // String texto = '''
  //   Olá,

  //   Tudo bem?
  // ''';

  // print('Variavel x = $x');
  // print('Variavel x = ' + x.toString());

  // List lista = [];
  // List<int> lista2 = [
  //   1,
  //   2,
  //   3,
  //   4,
  // ];
  // List lista3 = [1, 'String', true];

  // Map<int, String> mapaVazio = {};
  // Map<int, String> mapaInts = {
  //   1: 'A',
  //   2: 'B',
  //   3: 'C',
  //   26: 'Z',
  // };

  // print(mapaInts);
  // print(mapaInts[1]);

  // dynamic dinamico = 'Carro';

  // String stringApartirDynamic = dinamico as String;

  // print(dinamico);
  // print(stringApartirDynamic);

  // int testeTernario = 3;

  // if (testeTernario > 3) {
  //   print('testeTernario maior que 3');
  // } else {
  //   print('testeTernario menor igual que 3');
  // }

  // testeTernario > 3
  //     ? print('testeTernario maior que 3')
  //     : print('testeTernario menor igual que 3');

  List<int> valoresFor = [10, 9, 8, 7];
  // List<String> valoresFor2 = [];

  // for (int i = 0; i < valoresFor.length; i++) {
  //   int x = valoresFor[i];
  //   print(x);
  // }

  // for (int x in valoresFor) {
  //   print(x);
  // }

  // valoresFor.forEach((int x) {
  //   print(x);
  // });

  // valoresFor.forEach(imprime);

  // print(soma(3, 3));
  // print(soma2('3', '3'));
  // print(soma3(3, 3));
  // print(soma3(3));
  // print(soma4(
  //   x: 4,
  //   y: 20,
  // ));

  int? intNull = null;

  if (intNull != null) {
    print(intNull.isNegative);
  }

  print(intNull!.isNegative);

  int x = intNull!;

  String? podeSerNull = null;

  String resultado = '';

  if (podeSerNull != null) {
    resultado = podeSerNull;
  } else {
    resultado = '';
  }

  resultado = podeSerNull ?? '';
}

int soma(int x, int y) {
  return x + y;
}

soma2(x, y) {
  return x + y;
}

int soma3(int x, [int y = 8]) {
  return x + y;
}

int soma4({required int x, int y = 3}) {
  return x + y;
}

void imprime(int x) {
  print('O valor de x é negativo?: ${x.isNegative}');
}
