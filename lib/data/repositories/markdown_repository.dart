 import 'package:design_patterns/constants.dart';
 import 'package:flutter/services.dart' show rootBundle;

 class MarkdownRepository {
   Future<String> get(String designPatternId) async {
     print('id = ${designPatternId}');
     var path = '$markdownPath$designPatternId.md';
     var markdownString = await rootBundle.loadString(path);
//    print(markdownString);
     return markdownString;
   }
 }
