import "package:flutter/material.dart";

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  callAction() {}

  mapAction() {}

  shareAction() {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            primaryColor: Colors.green[400],
            textTheme: TextTheme(body1: TextStyle(color: Colors.grey)),
            primaryTextTheme: TextTheme(title: TextStyle(color: Colors.white))),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Meu Primeiro App com Flutter'),
          ),
          body: Column(
            children: [
              Image(
                image: AssetImage('assets/muro.jpg'),
              ),
              Container(
                color: Colors.red[50],
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Kotel',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black)),
                          Text('Jerusalem, Israel',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.grey))
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.blue),
                        Text('9.876')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Botao(
                      icon: Icons.call,
                      text: 'Ligar',
                      onPress: callAction,
                    ),
                    Botao(
                        icon: Icons.location_on,
                        text: 'Ver no Mapa',
                        onPress: mapAction),
                    Botao(
                        icon: Icons.share,
                        text: 'Compartilhar',
                        onPress: shareAction)
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Text(
                  'O Muro das Lamentações ou Muro Ocidental é o segundo local mais sagrado do judaísmo, atrás somente do Santo dos Santos, no monte do Templo. Trata-se do único vestígio do antigo Templo de Herodes, erguido por Herodes, o Grande no lugar do Templo de Jerusalém inicial.',
                ),
              )
            ],
          ),
        ));
  }
}

class Botao extends StatelessWidget {
  Botao({this.onPress, @required this.icon, @required this.text});

  IconData icon;
  Function onPress;
  var text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: onPress,
        child: Column(
          children: [Icon(icon, color: Colors.blue), Text(text)],
        ),
      ),
    );
  }
}
