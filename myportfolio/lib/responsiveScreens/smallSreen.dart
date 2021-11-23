import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/keys.dart';
import 'package:myportfolio/helper/responsive.dart';
import 'package:myportfolio/widgets/about.dart';
import 'package:myportfolio/widgets/contact.dart';
import 'package:myportfolio/widgets/footer.dart';
import 'package:myportfolio/widgets/header.dart';
import 'package:myportfolio/widgets/moreWork.dart';
import 'package:myportfolio/widgets/work.dart';

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: AnimationLimiter(
      child: Column(
          children: AnimationConfiguration.toStaggeredList(
              duration: const Duration(seconds: 1),
              childAnimationBuilder: (widget) => SlideAnimation(
                    horizontalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
              children: [
            Container(
              key: OurKeys.homeKey,
              height: ResponsiveWidget.isLargeScreen(context) ||
                      ResponsiveWidget.isMediumScreen(context)
                  ? MediaQuery.of(context).size.height * 0.7
                  : MediaQuery.of(context).size.height * 0.5,
              child: HeaderSection(),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
                key: OurKeys.aboutKey,
                height: ResponsiveWidget.isLargeScreen(context) ||
                        ResponsiveWidget.isMediumScreen(context)
                    ? MediaQuery.of(context).size.height * 0.6
                    : MediaQuery.of(context).size.height * 1,
                child: AboutSection()),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
              child: Container(
                alignment: Alignment.centerLeft,
                height: 40,
                child: FittedBox(
                  child: Text(
                    "Some Things I've Built",
                    style:
                        GoogleFonts.capriola(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ),
            Container(
              key: OurKeys.workKey,
              height: ResponsiveWidget.isSmallScreen(context)
                  ? 350
                  : MediaQuery.of(context).size.height * 2,
              width: ResponsiveWidget.isSmallScreen(context)
                  ? 260
                  : MediaQuery.of(context).size.width,
              child: WorkSection(),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 1,
              width: MediaQuery.of(context).size.width,
              child: MoreWorkSection(),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              key: OurKeys.contactKey,
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Contact(),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: Footer(),
            )
          ])),
    ));
  }
}
