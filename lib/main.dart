import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  var contatos = [
    'Matthaus Nawan',
    'Aline Raquel',
    'Pedro Gael',
    'Samuel Levi'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('Flutter e Listas')),
            //LISTA DINAMICA
            body: ListView.builder(
              itemCount: contatos.length,
              itemBuilder: (ctx, index) {
                return ListTile(
                  title: Text('${contatos[index]}'),
                  leading: Icon(Icons.person),
                  trailing: FlatButton(
                    onPressed: () {},
                    child: Icon(Icons.call),
                  ),
                );
              },
            )
            //GRID VIEW
            // body: GridView.count(
            //   crossAxisCount: 2,
            //   scrollDirection: Axis.vertical,
            //   children: [
            //     Container(color: Colors.red, margin: EdgeInsets.all(5)),
            //     Container(color: Colors.red[100], margin: EdgeInsets.all(5)),
            //     Container(color: Colors.blue[100], margin: EdgeInsets.all(5)),
            // Container(color: Colors.blue[100]),
            // ],
            // )
            //LIST VIEW
            //ListView(scrollDirection: Axis.horizontal, children: [
            // ListTile(
            //   title: Text('Mapa'),
            //   leading: Icon(Icons.map),
            //   trailing: Icon(Icons.check),
            // ),
            // ListTile(
            //   title: Text('configs'),
            //   leading: Icon(Icons.settings),
            //   trailing: Icon(Icons.check),
            // ),
            //Container(width: 150, color: Colors.red),
            //Container(width: 150, color: Colors.blue),
            //Container(width: 150, color: Colors.green)
            //]),
            ));
  }
}
