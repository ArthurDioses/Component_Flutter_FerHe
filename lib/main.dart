import 'package:component_flutter_ferhe/src/pages/home_page.dart';
//import 'package:component_flutter_ferhe/src/pages/home_page_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //home: HomePageTemp(),
    );
  }
}
