import 'veiculo.dart';

class Carro extends Veiculo {
  // Acelera a velocidade em 10
  @override
  void acelerar() {
    this.velocidade += 10;
    print('Acelerando... $velocidade km/h');
  }
}
