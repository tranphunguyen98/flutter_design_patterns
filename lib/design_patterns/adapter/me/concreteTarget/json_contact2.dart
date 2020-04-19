import 'dart:convert';

import 'package:design_patterns/design_patterns/adapter/me/data/data_json.dart';
import 'package:design_patterns/design_patterns/adapter/me/target/ijsoncontact.dart';

import '../../contact.dart';

class JsonContact2 extends IJsonContact {
  @override
  List<Contact> getJsonContracts() {
    var contactsList = _parseContactsJson(DataJson.contactsJson);
    return contactsList;
  }

  List<Contact> _parseContactsJson(String contactsJson) {
    var contactsMap = json.decode(contactsJson) as Map<String, dynamic>;
    var contactsJsonList = contactsMap['contacts'] as List;
    var contactsList = contactsJsonList
        .map((json) => Contact(
              fullName: (json['fullName'] as String) + ' Json2',
              email: json['email'],
              favourite: json['favourite'],
            ))
        .toList();

    return contactsList;
  }
}
