import 'package:design_patterns/screens/category/category.dart';
import 'package:design_patterns/screens/main_menu/main_menu_me.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:design_patterns/constants.dart';
import 'package:design_patterns/router.dart';
import 'package:design_patterns/themes.dart';

void main() => runApp(App());

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      title: 'Design Patterns App',
      theme: lightTheme,

      // onGenerateRoute: Router.generateRoute,

      // initialRoute: initialRoute,
      home: MainMenuMe(),
      // debugShowCheckedModeBanner: false,
    );
  }
}
