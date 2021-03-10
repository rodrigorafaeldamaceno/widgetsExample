import 'package:flutter/material.dart';
import 'package:widgets/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        primaryColor: Colors.teal,
        // brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}
