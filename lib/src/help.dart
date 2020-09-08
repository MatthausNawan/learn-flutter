import 'package:flutter/material.dart';

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments({this.title, this.message});
}

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

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
    //   child: Text('Open snackbar Help Page'),
    // ));
    return Scaffold(
        appBar: AppBar(
          title: Text(args.title),
        ),
        body: Center(
            child: RaisedButton(
          child: Text(args.message),
          onPressed: () {
            Navigator.pop(context);
          },
        )));
  }
}
