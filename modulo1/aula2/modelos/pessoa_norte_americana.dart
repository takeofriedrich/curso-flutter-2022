import 'pessoa.dart';

class PessoaNorteAmericana extends Pessoa {
  String? SSN;

  @override
  bool ehDeMaior() {
    return idade! > 21;
  }
}
