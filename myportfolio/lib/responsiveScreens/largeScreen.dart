import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/keys.dart';
import 'package:myportfolio/widgets/about.dart';
import 'package:myportfolio/widgets/contact.dart';
import 'package:myportfolio/widgets/footer.dart';
import 'package:myportfolio/widgets/header.dart';
import 'package:myportfolio/widgets/moreWork.dart';
import 'package:myportfolio/widgets/work.dart';

class LargeScreen extends StatelessWidget {
  final homeKey = GlobalKey();
  final workKey = GlobalKey();
  final contactKey = GlobalKey();
  final aboutKey = GlobalKey();
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
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: HeaderSection(),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                    key: OurKeys.aboutKey,
                    height: MediaQuery.of(context).size.height * 0.6,
                    child: AboutSection()),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 50, horizontal: 50),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    height: 40,
                    child: FittedBox(
                      child: Text(
                        "Some Things I've Built",
                        style: GoogleFonts.capriola(
                            color: Colors.white, fontSize: 35),
                      ),
                    ),
                  ),
                ),
                Container(
                  key: OurKeys.workKey,
                  height: MediaQuery.of(context).size.height * 1,
                  child: WorkSection(),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 1.6,
                  width: MediaQuery.of(context).size.width,
                  child: MoreWorkSection(),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  key: OurKeys.contactKey,
                  height: MediaQuery.of(context).size.height * 0.5,
                  width: MediaQuery.of(context).size.width,
                  child: Contact(),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  height: 50,
                  child: Footer(),
                ),
              ]),
        ),
      ),
    );
  }
}
