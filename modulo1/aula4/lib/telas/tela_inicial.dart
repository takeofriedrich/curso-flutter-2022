import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String texto = '';

  void funcaoBotao() {
    setState(() {
      texto += 'A';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.bed_rounded,
            color: Colors.black,
          ),
          onPressed: funcaoBotao,
        ),
        title: Container(
          color: Colors.red,
          width: 150,
          child: Text(
            texto,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Container(
        color: Colors.red,
        height: 300,
        width: 150,
      ),
    );
  }
}
