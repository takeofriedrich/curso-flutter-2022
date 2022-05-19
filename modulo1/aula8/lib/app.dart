import 'package:aula8/telas/tela1.dart';
import 'package:aula8/telas/tela2.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Tela1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
