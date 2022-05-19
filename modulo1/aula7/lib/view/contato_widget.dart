import 'package:aula7/modelos/contato.dart';
import 'package:flutter/material.dart';

class ContatoWidget extends StatelessWidget {
  ContatoWidget({required this.contato, required this.onRemove});

  late Contato contato;
  Function(Contato) onRemove;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(contato.nome!),
      subtitle: Text(contato.telefone!),
      trailing: IconButton(
        onPressed: () {
          onRemove(contato);
        },
        icon: const Icon(Icons.delete),
      ),
    );
  }
}
