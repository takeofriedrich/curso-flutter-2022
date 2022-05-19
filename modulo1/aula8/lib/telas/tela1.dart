import 'package:aula8/telas/tela2.dart';
import 'package:flutter/material.dart';

class Tela1 extends StatefulWidget {
  const Tela1({Key? key}) : super(key: key);

  @override
  State<Tela1> createState() => _Tela1State();
}

class _Tela1State extends State<Tela1> {
  String retorno = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tela 1'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            onPressed: () {
              try {
                throw Exception('Exceção X');
              } on Exception catch (e) {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: const Text('Erro aconteceu'),
                        content:
                            Text(e.toString().replaceAll('Exception: ', '')),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              // Salvar no bd
                              Navigator.pop(context);
                            },
                            child: Text('OK'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancelar'),
                          )
                        ],
                      );
                    });
              }
            },
            icon: const Icon(Icons.looks_one),
          ),
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text('Exibindo uma snackbar'),
                action: SnackBarAction(
                  label: 'Ok',
                  onPressed: () {},
                ),
              ));
            },
            icon: const Icon(Icons.looks_two),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  dynamic x = MaterialPageRoute(builder: ((context) {
                    return Tela2();
                  }));
                  Navigator.push(context, x).then((value) {
                    if (value != null) {
                      setState(() {
                        retorno = value as String;
                      });
                    }
                  });
                },
                child: const Text('push()'),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) {
                    return Tela2();
                  }));
                },
                child: const Text('pushReplacement()'),
              ),
            ],
          ),
          retorno.isNotEmpty
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(retorno),
                  ],
                )
              : Container(),
        ],
      ),
    );
  }
}
