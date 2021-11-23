import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Work with ChangeNotifier {
  final String image;
  Work({this.image});
}

class Works with ChangeNotifier {
  final List<Work> works = [
    Work(
      image: 'assets/images/mock1.png',
    ),
    Work(
      image: 'assets/images/mock2.png',
    ),
    Work(
      image: 'assets/images/mock1.png',
    ),
    Work(
      image: 'assets/images/mock2.png',
    ),
    Work(
      image: 'assets/images/mock1.png',
    ),
    Work(
      image: 'assets/images/mock2.png',
    ),
  ];
}
