import 'singleton.dart';
import 'valor_negativo_exception.dart';

void main(List<String> args) async {
  // espera3Segs().whenComplete(() => print('B'));
  // List<int> valores = await retornaList();
  // for (int x in valores) {
  //   print(x);
  // }
  // retornaList().then((List<int> valores) {
  //   for (int x in valores) {
  //     print(x);
  //   }
  // });

  List<int> valores2 = [1, 2];
  // try {
  //   print(valores2[3]);
  // } on Error catch (e) {
  //   print(e);
  // }
  // try {
  //   print(somaLista(valores2));
  // } on ValorNegativoException catch (e) {
  //   print(e);
  // } on Exception catch (e) {
  //   print(e);
  // } finally {
  //   print('Executou o finally');
  // }
  // espera3Segs().catchError((e) => print(e));
  // espera3Segs().onError((error, stackTrace) => print(stackTrace));

  Singleton x = Singleton();
  Singleton y = Singleton();

  print(x);
  print(y);

  x.incrementa();

  print(x);
  print(y);
}

int somaLista(List<int> lista) {
  int soma = 0;
  for (int x in lista) {
    soma += x;
    if (x.isNegative) {
      throw ValorNegativoException(x);
    }
    if (soma > 1000) {
      throw Exception('Valor estourou o limite $soma');
    }
  }
  return soma;
}

Future<void> espera3Segs() async {
  return Future.delayed(Duration(seconds: 3)).whenComplete(() => print('A'));
}

Future<List<int>> retornaList() async {
  await Future.delayed(Duration(seconds: 2));
  return [1, 2, 3, 4, 5];
}
