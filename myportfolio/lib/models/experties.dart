import 'package:flutter/material.dart';

class Experties {
  final String text;
  Experties({this.text});
}

class ExpertiesList with ChangeNotifier {
  final List<Experties> expertiesItem = [
    Experties(text: '. Responsiveness'),
    Experties(text: '. Business Logic'),
    Experties(text: '. 6-Screen app'),
    Experties(text: '. Business Logic'),
    Experties(text: '. StateMangement(Provider)'),
    Experties(text: '. Business Logic'),
    Experties(text: '. StateMangement(Provider)'),
    Experties(text: '. Responsiveness'),
  ];
}
