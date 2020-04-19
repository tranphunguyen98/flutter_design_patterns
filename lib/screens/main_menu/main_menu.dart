import 'package:design_patterns/data/models/design_pattern_category.dart';
import 'package:design_patterns/data/repositories/design_pattern_categories_repository.dart';
import 'package:design_patterns/screens/main_menu/widgets/main_menu_card.dart';
import 'package:flutter/material.dart';

import 'package:design_patterns/constants.dart';
import 'package:design_patterns/screens/main_menu/widgets/main_menu_header.dart';

class MainMenu extends StatelessWidget {
  final DesignPatternCategoriesRepository repository =
      DesignPatternCategoriesRepository();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScrollConfiguration(
          behavior: ScrollBehavior(),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(paddingL),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                MainMenuHeader(),
                FutureBuilder<List<DesignPatternCategory>>(
                  future: repository.get(),
                  initialData: [],
                  builder: (
                    _,
                    AsyncSnapshot<List<DesignPatternCategory>> snapshot,
                  ) {
//                    print(snapshot.connectionState);
                    if(snapshot.connectionState == ConnectionState.waiting) {
                      return CircularProgressIndicator(
                        backgroundColor: lightBackgroundColor,
                        valueColor: AlwaysStoppedAnimation<Color>(
                          Colors.black.withOpacity(0.65),
                        ),
                      );
                    }

                    if(snapshot.connectionState == ConnectionState.done) {
//                      print('done');
                      if (snapshot.hasData) {
//                        print('hasData');
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            for (var category in snapshot.data)
                              Container(
                                margin: const EdgeInsets.only(top: marginL),
                                child: MainMenuCard(
                                  category: category,
                                ),
                              )
                          ],
                        );
                      }
                    }
                    return Text('ERROR');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
