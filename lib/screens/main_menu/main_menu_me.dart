import 'package:design_patterns/screens/category/category.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class MainMenuMe extends StatefulWidget {
  @override
  _MainMenuMeState createState() => _MainMenuMeState();
}

class _MainMenuMeState extends State<MainMenuMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Design Pattern'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Material(
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xFFF3D250),
          elevation: 8.0,
          child: InkWell(
            highlightColor: Colors.transparent,
            splashColor: Colors.black12,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              padding: const EdgeInsets.all(paddingL),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Creational",
                    style: Theme.of(context).textTheme.title.copyWith(
                      fontSize: 26.0,
                      color: Colors.white,
                    ),
//                      overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '1 pattern',
                    style: Theme.of(context).textTheme.subhead.copyWith(
                      color: Colors.white,
                    ),
                  )
//                    contentHeader,
//                    contentText,
                ],
              ),
              height: 120,
              width: double.infinity,
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Category()));
            },
          ),
        ),
      ),
    );
  }
}
