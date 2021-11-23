import 'package:flutter/material.dart';

class MoreWork {
  final String id;
  final String title;
  final String shortDesc;
  final String longDesc;
  final List<String> images;

  MoreWork({this.id, this.title, this.shortDesc, this.longDesc, this.images});
}

class MoreWorks with ChangeNotifier {
  final List<MoreWork> moreWorks = [
    MoreWork(
        id: '1',
        images: ['assets/images/mock1.png'],
        title: 'E-commerce Mobile app',
        shortDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work',
        longDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work This is one of the best ever is one ever the best E-commerce app i built ever in the workThis is one of the best ever is one ever the best \nE-commerce app i built ever in the work This is one of the best ever is one ever the best E-commerce app i built ever in the workThis is one of the best ever is one ever the best \nE-commerce app i built ever in the work This is one of the best ever is one ever the best E-commerce app i built ever in the work'),
    MoreWork(
        id: '2',
        images: ['assets/images/mock1.png'],
        title: 'E-commerce Mobile app',
        shortDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work',
        longDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work This is one of the best ever is one ever the best E-commerce app i built ever in the work'),
    MoreWork(
        id: '3',
        images: ['assets/images/mock1.png'],
        title: 'E-commerce Mobile app',
        shortDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work',
        longDesc:
            'This is one of the best ever is one ever the best E-commerce app i built ever in the work This is one of the best ever is one ever the best E-commerce app i built ever in the work'),
    MoreWork(
        id: '4',
        images: ['assets/images/mock1.png'],
        title: 'E-commerce Mobile app',
        shortDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work',
        longDesc:
            'This is one of the best ever is one ever the best \nE-commerce app i built ever in the work This is one of the best ever is one ever the best E-commerce app i built ever in the work'),
  ];

  MoreWork findById(String id) {
    return moreWorks.firstWhere((workId) => workId == id);
  }
}
