import 'package:design_patterns/widgets/design_patterns/adapter/adapter_example.dart';
import 'package:design_patterns/widgets/design_patterns/singleton/singleton_example.dart';
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
          SingletonExample(),
        );
    // Structural
      case _DesignPatternRoutes.adapterRoute:
        return _buildDesignPatternDetailsPageRoute(
          settings,
          AdapterExample(),
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
  static const String singletonRoute = '/singleton';
  static const String adapterRoute = '/adapter';
}
