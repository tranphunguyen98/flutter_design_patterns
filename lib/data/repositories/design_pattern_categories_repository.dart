 import 'dart:async';
 import 'dart:convert';

 import 'package:design_patterns/constants.dart';
 import 'package:design_patterns/data/models/design_pattern_category.dart';
 import 'package:flutter/services.dart' show rootBundle;

 class DesignPatternCategoriesRepository {
   Future<List<DesignPatternCategory>> get() async {
     var menuJson = await rootBundle.loadString(designPatternsJsonPath);
     var designPatternCategoryJsonList = json.decode(menuJson) as List;
     var mainMenuSections = designPatternCategoryJsonList
         .map((categoryJson) => DesignPatternCategory.fromJson(categoryJson))
         .toList();

     return mainMenuSections;
   }
 }
