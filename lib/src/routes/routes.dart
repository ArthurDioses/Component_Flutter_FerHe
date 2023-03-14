import 'package:component_flutter_ferhe/src/pages/alert_page.dart';
import 'package:component_flutter_ferhe/src/pages/avatar_page.dart';
import 'package:component_flutter_ferhe/src/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
  };
}
