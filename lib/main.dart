import 'package:flutter/material.dart';
import 'package:landfcm/pages/login.dart';
import 'package:landfcm/pages/register.dart';


main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/register': (context) => RegisterPage(),
      },
    );
  }
}