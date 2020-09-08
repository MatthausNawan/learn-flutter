import "package:flutter/material.dart";
import "./src/home.dart";
import "./src/help.dart";
// import "./src/home-tabar.dart";

void main() => runApp(MeuApp());

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //SIDE DRAWER
      // home: Scaffold(
      //     drawer: Drawer(
      //       child: ListView(
      //         children: [
      //           ListTile(
      //             title: Text('Menu 1'),
      //             onTap: () {},
      //             leading: Icon(Icons.event),
      //           ),
      //           ListTile(
      //             title: Text('Menu 2'),
      //             onTap: () {},
      //             leading: Icon(Icons.person_add),
      //           ),
      //         ],
      //       ),
      //     ),
      // home:HomeTabBar(),
      //     appBar: AppBar(
      //       title: Text('Navigations com Flutter'),
      //     ),
      //     body: HomePage()));
      // home: HomeTabBar());
      routes: {
        '/home': (context) => HomePage(),
        '/help': (context) => HelpPage()
      },
      initialRoute: '/home',
    );
  }
}
