import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      //MaterialApp ou CupertinoApp para escolher o estilo do design do app entre android ou IOS
      theme: ThemeData(primarySwatch: Colors.purple),
      home: HomePage()));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var count = 0;

  void increment() {
    count++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Utilizar scaffold para personalizar a pagina (sempre utilizar em paginas novas)
      appBar: AppBar(title: Text("Meu Primeiro App")),
      body: Center(
          child: Text(
        "Contador\n$count",
        textAlign: TextAlign.center,
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          increment();
        },
      ),
    );
  }
}
