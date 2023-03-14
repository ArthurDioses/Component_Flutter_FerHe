import 'package:component_flutter_ferhe/src/pages/alert_page.dart';
import 'package:component_flutter_ferhe/src/routes/routes.dart';
//import 'package:component_flutter_ferhe/src/pages/home_page_temp.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
      //home: HomePage(),
      //home: HomePageTemp(),
    );
  }
}
