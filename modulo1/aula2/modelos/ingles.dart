import 'boasVindas.dart';
import 'despedida.dart';

class Ingles with BoasVindas, Despedida {
  @override
  void boasVindas() {
    print('Welcome');
  }

  @override
  void despedida() {
    print('Good Bye');
  }
}
