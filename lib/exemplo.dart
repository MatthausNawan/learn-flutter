import 'package:flutter/material.dart';

class Exemplo extends StatelessWidget {
  Exemplo({@required this.title, this.onPress});

  var title;
  Function onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.orange[200],
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Text(title),
          FlatButton(child: Text('Clique no button'), onPressed: onPress)
        ],
      ),
    );
  }
}
