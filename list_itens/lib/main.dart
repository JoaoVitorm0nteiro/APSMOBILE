import 'dart:html';

import 'package:flutter/material.dart';
import './planetas.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final lista_planetas = <String>[
    'Mercurio',
    'Venus',
    'Terra',
    'Marte',
    'Jupiter',
    'Saturno',
    'Urano',
    'Netuno'
  ];
  final List<String> _planetas = [];
  int cont = 0;

/*   @override
  void initState() {
    super.initState();
    _planetas.add('Marte');
  } */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: Scaffold(
        appBar: AppBar(title: const Text('Lista de Planetas')),
        body: Column(children: [
          Expanded(child: Planetas(_planetas)),
          Container(
              margin: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _planetas.add(lista_planetas[cont]);
                      cont <= lista_planetas.length ? cont++ : cont + 0;
                    });
                  },
                  child: const Text('Exibir planetas')))
        ]),
      ),
    );
  }
}
