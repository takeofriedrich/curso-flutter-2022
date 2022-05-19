import 'package:aula7/modelos/contato.dart';
import 'package:flutter/cupertino.dart';

class ListaContatosController {
  TextEditingController caixaNome = TextEditingController();
  TextEditingController caixaTelefone = TextEditingController();

  List<Contato> contatos = [
    Contato(
      nome: 'Vinicius',
      telefone: '99999999',
    ),
  ];

  void salvar() {
    Contato contato = Contato(
      nome: caixaNome.text,
      telefone: caixaTelefone.text,
    );
    contatos.add(contato);
    caixaNome.clear();
    caixaTelefone.clear();
  }
}
