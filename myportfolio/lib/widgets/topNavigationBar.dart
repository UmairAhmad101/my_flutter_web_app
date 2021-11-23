import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import '../helper/keys.dart';
import 'package:myportfolio/helper/responsive.dart';

Widget topNavigationBar(
  BuildContext buildContext,
  GlobalKey<ScaffoldState> globalKey,
) {
  return AppBar(
    leading: Align(alignment: Alignment.topLeft, child: HeaderLogo()),
    leadingWidth: 80,
    elevation: 0,
    backgroundColor: Color(0xff0A192F),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 50),
        child: Container(
          child: !ResponsiveWidget.isSmallScreen(buildContext)
              ? Row(
                  children: [
                    SizedBox(
                      width: 50,
                    ),
                    TitleText(
                        title: 'Home',
                        onTap: () {
                          Scrollable.ensureVisible(
                              OurKeys.homeKey.currentContext);
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    TitleText(
                        title: 'Work',
                        onTap: () {
                          Scrollable.ensureVisible(
                              OurKeys.workKey.currentContext);
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    TitleText(
                        title: 'Contact',
                        onTap: () {
                          Scrollable.ensureVisible(
                              OurKeys.contactKey.currentContext);
                        }),
                    SizedBox(
                      width: 20,
                    ),
                    TitleText(
                        title: 'About',
                        onTap: () {
                          Scrollable.ensureVisible(
                              OurKeys.aboutKey.currentContext);
                        }),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.greenAccent, width: 1),
                          borderRadius: BorderRadius.circular(6)),
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text('Hire me',
                            style: GoogleFonts.dmMono(
                                fontSize: 16, color: Colors.greenAccent)),
                      ),
                    )
                  ],
                )
              : IconButton(
                  icon: Icon(
                    Icons.segment,
                    color: Colors.greenAccent,
                  ),
                  onPressed: () {
                    globalKey.currentState.openEndDrawer();
                  }),
        ),
      )
    ],
  );
}

class TitleText extends StatefulWidget {
  final String title;
  final Function onTap;

  TitleText({
    this.onTap,
    this.title,
  });

  @override
  _TitleTextState createState() => _TitleTextState();
}

class _TitleTextState extends State<TitleText> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onHover: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          // decoration: BoxDecoration(
          //     border: Border.all(
          //         style: widget.isSelected == true
          //             ? BorderStyle.solid
          //             : BorderStyle.none,
          //         color: Colors.greenAccent)),
          child: Text(widget.title,
              style: GoogleFonts.dmMono(
                fontSize: 16,
                color: isHover == true ? Colors.greenAccent : Colors.white,
              )),
        ),
      ),
    );
  }
}

class HeaderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "U",
                    style: GoogleFonts.oswald(
                      color: Colors.white,
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ".",
                    style: GoogleFonts.oswald(
                      color: Colors.greenAccent,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
