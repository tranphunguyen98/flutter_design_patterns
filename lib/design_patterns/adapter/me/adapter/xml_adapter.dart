import 'dart:math';

import 'package:design_patterns/design_patterns/adapter/contact.dart';
import 'package:design_patterns/design_patterns/adapter/me/adaptee/ixmlcontact.dart';
import 'package:design_patterns/design_patterns/adapter/me/target/ijsoncontact.dart';

class XmlAdapter extends IJsonContact {
  IXmlContact xmlContact;

  XmlAdapter(this.xmlContact);

  @override
  List<Contact> getJsonContracts() {
    List<Contact> list = xmlContact.getXmlContacts();
    list.add(Contact(
        email: 'email',
        favourite: true,
        fullName: 'name ${Random().nextInt(100)}'));
    return list;
  }
}
