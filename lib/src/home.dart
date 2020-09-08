import 'package:flutter/material.dart';
import './help.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Center(
    //     child: RaisedButton(
    //   onPressed: () {
    //     var snackbar = SnackBar(
    //         content: Text('I am a SnackBar...'),
    //         action: SnackBarAction(
    //           label: 'Undo Action',
    //           onPressed: () {},
    //         ));
    //     Scaffold.of(context).showSnackBar(snackbar);
    //   },
    //   child: Text('Open snackbar'),
    // ));
    return Scaffold(
        appBar: AppBar(title: Text('Home Page')),
        body: Center(
            child: RaisedButton(
          child: Text('Ir para Help'),
          onPressed: () {
            Navigator.pushNamed(context, '/help',
                arguments: ScreenArguments(
                    title: 'Sobre App', message: 'Bem vindo ao nosos APP!'));
          },
        )));
  }
}
