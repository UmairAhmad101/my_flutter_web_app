import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/responsive.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Flexible(
            child: FittedBox(
              child: Text(
                'Get In Touch',
                style: GoogleFonts.inter(
                    color: Colors.white,
                    fontSize: ResponsiveWidget.isSmallScreen(context) ? 45 : 60,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FittedBox(
            fit: BoxFit.cover,
            child: Text(
              'Im  and occasionally designing exceptional \nCurrently Im focused on building \naccessible, human-centered products',
              style: GoogleFonts.lato(
                color: Colors.white60,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.greenAccent, width: 1),
                borderRadius: BorderRadius.circular(6)),
            child: OutlinedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Say Hello',
                    style: GoogleFonts.dmMono(
                        fontSize: 16, color: Colors.greenAccent)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
