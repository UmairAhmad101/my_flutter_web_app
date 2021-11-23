import 'package:flutter/material.dart';
import 'package:myportfolio/helper/responsive.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SideSocialContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: !ResponsiveWidget.isSmallScreen(context)
            ? Positioned(
                top: 200,
                right: 15,
                child: ResponsiveWidget.isSmallScreen(context)
                    ? Row(
                        children: [
                          MyIconButton(
                            icon: FontAwesomeIcons.facebookSquare,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          MyIconButton(icon: FontAwesomeIcons.instagram),
                          SizedBox(
                            width: 6,
                          ),
                          MyIconButton(
                            icon: FontAwesomeIcons.twitter,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          MyIconButton(
                            icon: FontAwesomeIcons.githubSquare,
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          MyIconButton(
                            icon: FontAwesomeIcons.facebookSquare,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          MyIconButton(icon: FontAwesomeIcons.instagram),
                          SizedBox(
                            width: 6,
                          ),
                          MyIconButton(
                            icon: FontAwesomeIcons.twitter,
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          MyIconButton(
                            icon: FontAwesomeIcons.githubSquare,
                          ),
                        ],
                      ),
              )
            : null);
  }
}

class MyIconButton extends StatefulWidget {
  final Function onTap;
  final IconData icon;
  const MyIconButton({this.onTap, this.icon});

  @override
  State<MyIconButton> createState() => _MyIconButtonState();
}

class _MyIconButtonState extends State<MyIconButton> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
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
      child: IconButton(
          onPressed: widget.onTap,
          icon: Icon(
            widget.icon,
            size: 17,
            color: isHover ? Colors.greenAccent : Colors.white60,
          )),
    );
  }
}
