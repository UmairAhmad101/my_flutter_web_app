import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/responsive.dart';
import 'package:myportfolio/widgets/sideSocialContact.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return Container(
        child: Column(
          children: [
            Container(
              child: SideSocialContact(),
            ),
            Container(
              alignment: Alignment.center,
              child: FittedBox(
                  child: Text(
                'Desined & Built by Umair Ahmad',
                style: GoogleFonts.dmMono(color: Colors.white60),
              )),
            ),
          ],
        ),
      );
    } else {
      return Container(
        alignment: Alignment.center,
        child: FittedBox(
            child: Text(
          'Desined & Built by Umair Ahmad',
          style: GoogleFonts.dmMono(color: Colors.white60),
        )),
      );
    }
  }
}
