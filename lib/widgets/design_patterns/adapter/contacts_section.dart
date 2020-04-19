import 'package:design_patterns/design_patterns/adapter/me/target/ijsoncontact.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:design_patterns/constants.dart';
import 'package:design_patterns/design_patterns/adapter/contact.dart';
import 'package:design_patterns/widgets/design_patterns/adapter/contact_card.dart';
import 'package:design_patterns/widgets/platform_specific/platform_button.dart';

class ContactsSection extends StatefulWidget {
  final IJsonContact jsonContact;
  final String headerText;

  const ContactsSection({
    @required this.jsonContact,
    @required this.headerText,
  })  : assert(jsonContact != null),
        assert(headerText != null);

  _ContactsSectionState createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  final List<Contact> contacts = List<Contact>();

  void _getContacts() {
    setState(() {
      contacts.addAll(widget.jsonContact.getJsonContracts());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(widget.headerText),
        const SizedBox(height: spaceM),
        Stack(
          children: <Widget>[
            AnimatedOpacity(
              duration: const Duration(milliseconds: 500),
              opacity: contacts.length > 0 ? 1.0 : 0.0,
              child: Column(
                children: <Widget>[
                  for (var contact in contacts)
                    ContactCard(
                      contact: contact,
                    )
                ],
              ),
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 250),
              opacity: contacts.length == 0 ? 1.0 : 0.0,
              child: PlatformButton(
                child: Text('Get contacts'),
                materialColor: Colors.black,
                materialTextColor: Colors.white,
                onPressed: _getContacts,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
