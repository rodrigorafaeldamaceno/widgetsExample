import 'package:flutter/material.dart';
import 'package:widgets/pages/expansile_tile_list.dart';
import 'package:widgets/pages/list_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Widgets'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'ListTile'),
              Tab(text: 'ExpansileTile'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListPage(),
            ExpansileTileListPage(),
          ],
        ),
      ),
    );
  }
}
