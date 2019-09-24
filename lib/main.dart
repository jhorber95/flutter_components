import 'package:flutter/material.dart';
import 'package:widgets/pages/alert_page.dart';
import 'package:widgets/pages/avatar_page.dart';
import 'package:widgets/pages/home_page.dart';
import 'package:widgets/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componentes',
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Route error: ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPage());
      },
    );
  }
}
