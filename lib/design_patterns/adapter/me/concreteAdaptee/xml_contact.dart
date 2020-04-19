import 'package:design_patterns/design_patterns/adapter/me/data/data_xml.dart';
import 'package:xml/xml.dart' as xml;

import 'package:design_patterns/design_patterns/adapter/contact.dart';
import 'package:design_patterns/design_patterns/adapter/me/adaptee/ixmlcontact.dart';

class XmlContact implements IXmlContact {

  @override
  List<Contact> getXmlContacts() {
    var contactsList = _parseContactsXml(DataXml.contactsXml);

    return contactsList;
  }

  List<Contact> _parseContactsXml(String contactsXml) {
    var xmlDocument = xml.parse(contactsXml);
    var contactsList = List<Contact>();

    for (var xmlElement in xmlDocument.findAllElements('contact')) {
      var fullName = xmlElement.findElements('fullname').single.text;
      var email = xmlElement.findElements('email').single.text;
      var favouriteString = xmlElement.findElements('favourite').single.text;
      var favourite = favouriteString.toLowerCase() == 'true';

      contactsList.add(Contact(
        fullName: fullName + ' xml1',
        email: email,
        favourite: favourite,
      ));
    }

    return contactsList;
  }

}
