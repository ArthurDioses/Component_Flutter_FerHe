import 'package:component_flutter_ferhe/src/pages/alert_page.dart';
import 'package:component_flutter_ferhe/src/routes/routes.dart';
//import 'package:component_flutter_ferhe/src/pages/home_page_temp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: [
        const Locale('en', 'US'), //English
        const Locale('es', 'ES') //Español
      ],
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
