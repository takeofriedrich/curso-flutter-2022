import 'package:aula7/controllers/lista_contatos_controller.dart';
import 'package:aula7/modelos/contato.dart';
import 'package:aula7/view/contato_widget.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  ListaContatosController controller = ListaContatosController();

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
  Widget build(BuildContext context) {
    List<Contato> listaContatos = widget.controller.contatos;

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  children: const [
                    Text('Digite o nome:'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(hintText: 'Ex.: Vinicius'),
                  controller: widget.controller.caixaNome,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10, left: 10),
                child: Row(
                  children: const [
                    Text('Digite o telefone:'),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: TextField(
                  decoration: const InputDecoration(hintText: '4799999999'),
                  controller: widget.controller.caixaTelefone,
                ),
              ),
              ElevatedButton(
                onPressed: salvaContatoERedesenha,
                child: const Text('Salvar'),
              )
            ],
          ),
          Flexible(
            flex: 6,
            child: _lista(listaContatos),
          ),
        ],
      ),
    );
  }

  ListView _lista(List<Contato> listaContatos) {
    return ListView.builder(
      itemBuilder: (context, i) {
        return ContatoWidget(
          contato: listaContatos[i],
          onRemove: removeERedesenha,
        );
      },
      itemCount: listaContatos.length,
    );
  }

  void salvaContatoERedesenha() {
    setState(() {
      widget.controller.salvar();
    });
  }

  void removeERedesenha(Contato contato) {
    setState(() {
      widget.controller.contatos.remove(contato);
    });
  }
}
