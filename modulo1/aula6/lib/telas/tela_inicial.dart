import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  TelaInicial({Key? key}) : super(key: key);

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  List<String> nomes = ['Vinicius', 'Takeo', 'Friedrich'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            setState(() {
              nomes.add('AAA');
            });
            print(nomes);
          },
          icon: const Icon(Icons.add),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 4, // 4/(11)
            child: Container(
              color: Colors.red,
              // height: 150,
            ),
          ),
          // Container(
          //   color: Colors.blue,
          //   height: 150,
          // ),
          Flexible(
            flex: 7, // 7/11
            child: Container(
              color: Colors.green,
              // height: 150,
            ),
          ),
        ],
      ),
      // body: ListView.builder(
      //   itemBuilder: (BuildContext context, int i) {
      //     return Container(
      //       margin: EdgeInsets.all(10),
      //       child: Text(nomes[i]),
      //     );
      //   },
      //   itemCount: nomes.length,
      // ),
    );
  }
}
