import 'modelos/boasVindas.dart';
import 'modelos/carro.dart';
import 'modelos/despedida.dart';
import 'modelos/ingles.dart';
import 'modelos/meses.dart';
import 'modelos/moto.dart';
import 'modelos/pessoa.dart';
import 'modelos/pessoa_norte_americana.dart';
import 'modelos/portugues.dart';
import 'modelos/veiculo.dart';

void main(List<String> args) {
  // Pessoa p = new Pessoa(idade: 21);

  // p.nome = 'Vinicius';
  // p.idade = 21;
  // p.altura = 1.78;
  // p.ehFumante = false;
  // p.cpf = '1111111';

  // print(p);

  // Mes agosto = Mes.Agosto;
  // print(agosto.index);

  // Mes.values.forEach((element) {
  //   print(element.toString().replaceAll('Mes.', ''));
  // });

  // PessoaNorteAmericana pn = PessoaNorteAmericana();
  // pn.idade = 21;

  // print(p.ehDeMaior());
  // print(pn.ehDeMaior());

  Veiculo veiculo = Carro();
  veiculo.acelerar();
  veiculo.acelerar();
  veiculo.acelerar();
  veiculo.acelerar();

  Veiculo moto = Moto();
  moto.acelerar();
  moto.acelerar();
  moto.acelerar();

  BoasVindas portugues = Portugues();
  BoasVindas ingles = Ingles();

  List<Despedida> mixins = [portugues as Despedida, ingles as Despedida];

  mixins.forEach((element) {
    (element as BoasVindas).boasVindas();
    element.despedida();
  });
}
