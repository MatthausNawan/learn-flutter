import "package:flutter/material.dart";

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Meu Primeiro App com Flutter'),
            ),
            body: Center(child: Text("Ola Flutter"))));
  }
}
