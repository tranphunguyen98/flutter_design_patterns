import 'package:design_patterns/screens/main_menu/widgets/main_menu_card.dart';
import 'package:flutter/material.dart';

import 'package:design_patterns/constants.dart';
import 'package:design_patterns/screens/main_menu/widgets/main_menu_header.dart';

class MainMenu extends StatelessWidget {
  // final DesignPatternCategoriesRepository repository =
  //     DesignPatternCategoriesRepository();

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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: marginL),
                      child:
                         MainMenuCard(
                          // category: category,
                         ),
                    )
                  ],
                )
                // FutureBuilder<List<DesignPatternCategory>>(
                //   future: repository.get(),
                //   initialData: [],
                //   builder: (
                //     _,
                //     AsyncSnapshot<List<DesignPatternCategory>> snapshot,
                //   ) {
                // if (snapshot.hasData) {
                //   return Column(
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //       for (var category in snapshot.data)
                //         Container(
                //           margin: const EdgeInsets.only(top: marginL),
                //           child: MainMenuCard(
                //             category: category,
                //           ),
                //         )
                //     ],
                //   );
                // }

                //     return CircularProgressIndicator(
                //       backgroundColor: lightBackgroundColor,
                //       valueColor: AlwaysStoppedAnimation<Color>(
                //         Colors.black.withOpacity(0.65),
                //       ),
                //     );
                //   },
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
