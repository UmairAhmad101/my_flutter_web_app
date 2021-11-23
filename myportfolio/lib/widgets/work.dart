import 'package:flutter/material.dart';
import 'package:myportfolio/helper/responsive.dart';
import 'package:myportfolio/models/work.dart';
import 'package:provider/provider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class WorkSection extends StatelessWidget {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    final works = Provider.of<Works>(context);
    return Padding(
      padding: ResponsiveWidget.isSmallScreen(context)
          ? EdgeInsets.all(10)
          : EdgeInsets.all(50),
      child: (Container(
        height: ResponsiveWidget.isSmallScreen(context) ? 350 : 500,
        width: ResponsiveWidget.isSmallScreen(context) ? 260 : 350,
        child: Swiper(
          itemBuilder: (BuildContext context, int i) {
            return WorkWidget1(
              image: works.works[i].image,
            );
          },
          itemCount: works.works.length,
          pagination: new SwiperPagination(margin: EdgeInsets.all(20)),
          control: new SwiperControl(
            color: Colors.greenAccent,
            disableColor: Colors.white,
          ),
        ),
      )),
    );
  }
}

class WorkWidget1 extends StatelessWidget {
  final String image;
  WorkWidget1({this.image});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}



// ListView.builder(
//                 controller: controller,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: works.works.length,
//                 itemBuilder: (ctx, i) {
//                   return WorkWidget1(
//                     image: works.works[i].image,
//                   );
//                 }),