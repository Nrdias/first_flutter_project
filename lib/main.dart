import 'dart:math';

import 'package:flutter/material.dart';

void main() {
    runApp(MaterialApp(
       home: Home(),
       debugShowCheckedModeBanner: false,
    ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var _list = [
        'É importante incentivar as pessoas ao seu redor!',
        'Não deixe de aproveitar sua vida, viva sem arrependimentos!',
        'Café é sempre uma ótima companhia!',
        'O processo de aprendizagem não é linear, e ta tudo bem!'
  ];
  var _newphrase = 'Clique abaixo para gerar um texto!';
  void generate(){
    int num = Random().nextInt(_list.length);
    setState(() {
      _newphrase = _list[num];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Frases do Dias"),
            backgroundColor: Colors.green,
        ),
      body: Center(
          child: Container(
          padding: EdgeInsets.all(16),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('image/logo.png'),
              Text(
                "$_newphrase",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                  style:ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen, //background//texto
                  ) ,
                  onPressed: generate,
                  child: Text("Clique aqui!", style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
      )),
    );
  }
}
