import 'package:flutter/material.dart';
import './help.dart';
import './home.dart';

class HomeTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text('Flutter Tabs'),
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.list)),
                  Tab(icon: Icon(Icons.person))
                ],
              )),
          body: TabBarView(children: [HomePage(), HelpPage()]),
        ));
  }
}
