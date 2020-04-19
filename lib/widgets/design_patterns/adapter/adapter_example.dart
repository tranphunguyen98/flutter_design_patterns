import 'package:design_patterns/constants.dart';
import 'package:design_patterns/design_patterns/adapter/me/adapter/xml_adapter.dart';
import 'package:design_patterns/design_patterns/adapter/me/concreteAdaptee/xml_contact.dart';
import 'package:design_patterns/design_patterns/adapter/me/concreteTarget/json_contact.dart';
import 'package:design_patterns/design_patterns/adapter/me/concreteTarget/json_contact2.dart';
import 'package:flutter/material.dart';

import 'package:design_patterns/design_patterns/adapter/adapters/json_contacts_adapter.dart';
import 'package:design_patterns/design_patterns/adapter/adapters/xml_contacts_adapter.dart';
import 'package:design_patterns/widgets/design_patterns/adapter/contacts_section.dart';

class AdapterExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: ScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: paddingL),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ContactsSection(
              jsonContact: JsonContact(),
              headerText: 'Contacts from JSON API:',
            ),
            const SizedBox(height: spaceL),
            ContactsSection(
              jsonContact: XmlAdapter(XmlContact()),
              headerText: 'Contacts from XML API:',
            ),
          ],
        ),
      ),
    );
  }
}
