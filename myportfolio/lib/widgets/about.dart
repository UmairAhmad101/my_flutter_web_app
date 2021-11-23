import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/responsive.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: ResponsiveWidget.isLargeScreen(context) ||
              ResponsiveWidget.isMediumScreen(context)
          ? Row(
              children: [
                Flexible(
                  flex: 3,
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/image.JPG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                "I'm Umair",
                                style: GoogleFonts.capriola(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                "UI/UX Designer & Front-End Devleoper",
                                style: GoogleFonts.capriola(
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              'Im a software engineer specializing in building and occasionally designing exceptional \ndigital experiences. Currently Im focused on building accessible, \nhuman-centered products.',
                              style: GoogleFonts.inter(
                                color: Colors.white60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          OurProgessBar(
                            skillTilte: 'Flutter',
                            skillbarPercentage: 0.9,
                          ),
                          OurProgessBar(
                            skillTilte: 'Node js',
                            skillbarPercentage: 0.8,
                          ),
                          OurProgessBar(
                            skillTilte: 'Firebase',
                            skillbarPercentage: 0.85,
                          ),
                        ]),
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 5,
                  child: Container(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/image.JPG',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Expanded(
                  flex: 5,
                  child: Container(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                "I'm Umair",
                                style: GoogleFonts.capriola(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                          Flexible(
                            child: FittedBox(
                              child: Text(
                                "UI/UX Designer & Front-End Devleoper",
                                style: GoogleFonts.capriola(
                                  color: Colors.white60,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          FittedBox(
                            fit: BoxFit.cover,
                            child: Text(
                              'Im a software engineer specializing in building and occasionally designing exceptional \ndigital experiences. Currently Im focused on building accessible, \nhuman-centered products.',
                              style: GoogleFonts.capriola(
                                color: Colors.white60,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          OurProgessBar(
                            skillTilte: 'Flutter',
                            skillbarPercentage: 0.9,
                          ),
                          OurProgessBar(
                            skillTilte: 'Node js',
                            skillbarPercentage: 0.8,
                          ),
                          OurProgessBar(
                            skillTilte: 'Firebase',
                            skillbarPercentage: 0.85,
                          ),
                        ]),
                  ),
                ),
              ],
            ),
    );
  }
}

class OurProgessBar extends StatelessWidget {
  final String skillTilte;
  final double skillbarPercentage;

  const OurProgessBar({this.skillTilte, this.skillbarPercentage});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: FittedBox(
                child: Text(
                  skillTilte,
                  style: GoogleFonts.dmSans(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Flexible(
              child: FittedBox(
                child: new LinearPercentIndicator(
                  width: MediaQuery.of(context).size.width,
                  lineHeight: 10,
                  percent: skillbarPercentage,
                  backgroundColor: Color(0xff191919),
                  progressColor: Color(0xff8d8d8d),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
