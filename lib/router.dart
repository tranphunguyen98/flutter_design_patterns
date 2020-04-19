import 'package:flutter/material.dart';

import 'package:design_patterns/constants.dart';
import 'package:design_patterns/data/models/design_pattern.dart';
import 'package:design_patterns/data/models/design_pattern_category.dart';
import 'package:design_patterns/screens/category/category.dart';
import 'package:design_patterns/screens/design_pattern_details/design_pattern_details.dart';
import 'package:design_patterns/screens/main_menu/main_menu.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case initialRoute:
        return MaterialPageRoute(
          builder: (_) => MainMenu(),
        );
      case categoryRoute:
        var category = settings.arguments as DesignPatternCategory;
        return MaterialPageRoute(
          builder: (_) => Category(
            category: category,
          ),
        );
    // Creational
      case _DesignPatternRoutes.singletonRoute:
        return _buildDesignPatternDetailsPageRoute(
          settings,
          Text('Test singleton'),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => MainMenu(),
        );
    }
  }

  static MaterialPageRoute _buildDesignPatternDetailsPageRoute(
      RouteSettings settings,
      Widget example,
      ) {
    var designPattern = settings.arguments as DesignPattern;
    return MaterialPageRoute(
      builder: (_) => DesignPatternDetails(
        designPattern: designPattern,
        example: example,
      ),
    );
  }
}

class _DesignPatternRoutes {
  static const String abstractFactoryRoute = '/abstract-factory';
  static const String adapterRoute = '/adapter';
  static const String bridgeRoute = '/bridge';
  static const String builderRoute = '/builder';
  static const String commandRoute = '/command';
  static const String compositeRoute = '/composite';
  static const String decoratorRoute = '/decorator';
  static const String facadeRoute = '/facade';
  static const String factoryMethodRoute = '/factory-method';
  static const String interpreterRoute = '/interpreter';
  static const String iteratorRoute = '/iterator';
  static const String mementoRoute = '/memento';
  static const String prototypeRoute = '/prototype';
  static const String proxyRoute = '/proxy';
  static const String singletonRoute = '/singleton';
  static const String stateRoute = '/state';
  static const String strategyRoute = '/strategy';
  static const String templateMethodRoute = '/template-method';
}
