import 'boasVindas.dart';
import 'despedida.dart';

class Portugues with BoasVindas, Despedida {
  @override
  void boasVindas() {
    print('Bem-vindo');
  }

  @override
  void despedida() {
    print('Tchau');
  }
}
