import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/keys.dart';

class OurDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: [
          Positioned(
            right: 20,
            top: 20,
            child: Container(
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.close),
                color: Colors.greenAccent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 25, right: 25),
            child: ListView(
              children: [
                OurDrawerItem(
                    onTap: () {
                      Scrollable.ensureVisible(OurKeys.homeKey.currentContext);
                      Navigator.of(context).pop();
                    },
                    text: 'Home'),
                OurDrawerItem(
                    onTap: () {
                      Scrollable.ensureVisible(OurKeys.aboutKey.currentContext);
                      Navigator.of(context).pop();
                    },
                    text: 'About'),
                OurDrawerItem(
                    onTap: () {
                      Scrollable.ensureVisible(OurKeys.workKey.currentContext);
                      Navigator.of(context).pop();
                    },
                    text: 'Work'),
                OurDrawerItem(
                    onTap: () {
                      // Scrollable.ensureVisible(
                      //     OurKeys.contactKey.currentContext);
                    },
                    text: 'Contact'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OurDrawerItem extends StatefulWidget {
  final String text;
  final Function onTap;

  OurDrawerItem({this.text, this.onTap});

  @override
  _OurDrawerItemState createState() => _OurDrawerItemState();
}

class _OurDrawerItemState extends State<OurDrawerItem> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHover = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHover = false;
        });
      },
      child: ListTile(
        title: Text(
          widget.text,
          style: GoogleFonts.dmMono(
              color: isHover == true ? Colors.greenAccent : Colors.white),
        ),
        onTap: widget.onTap,
      ),
    );
  }
}
