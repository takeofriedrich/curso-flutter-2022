import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  String texto = '';
  TextEditingController controller = TextEditingController();

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
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      // body: Center(
      //   // child: ElevatedButton(
      //   //   onPressed: () {
      //   //     print('Hello World');
      //   //   },
      //   //   child: const Text('Hello World'),
      //   // ),
      //   child: Container(
      //     margin: const EdgeInsets.all(10),
      //     child: TextField(
      //       controller: controller,
      //       // obscureText: true,
      //       onSubmitted: _funcaoOnSubmitted,
      //     ),s
      //   ),
      // ),
      body: Center(
        child: Image.network(
            'https://cflimoveis.com.br/wp-content/uploads/2020/11/ponte-hercilio-luz-floriano-1170x0-c-center.jpg'),
      ),
    );
  }

  void _funcaoOnSubmitted(String x) {
    print(x);
  }
}
