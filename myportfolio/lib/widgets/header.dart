import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'Hi, my name is',
                          style: GoogleFonts.dmMono(color: Colors.greenAccent),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'Umair Ahmad',
                          style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 60,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Flexible(
                      child: FittedBox(
                        child: Text(
                          'I build things for the mobile',
                          style: GoogleFonts.inter(
                              color: Colors.white60, fontSize: 55),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    FittedBox(
                      fit: BoxFit.cover,
                      child: Text(
                        'Im a software engineer specializing in building and occasionally designing exceptional \ndigital experiences. Currently Im focused on building accessible, human-centered products',
                        style: GoogleFonts.inter(
                          color: Colors.white60,
                        ),
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

// class CurvePainter extends CustomPainter {
//   // paint = brush
//   // path = drawing
//   //size = boardsize
//   // canvas = board

//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint = Paint();
//     paint.color = Color(0xff191919);
//     paint.style = PaintingStyle.fill;
//     var path = Path();

//     path.moveTo(0, size.height * 0.25);
//     path.quadraticBezierTo(
//         size.width / 2, size.height / 1, size.width, size.height * 0.25);
//     path.lineTo(size.width, 0);
//     path.lineTo(0, 0);

//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }

// class MycustomClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     var path = new Path();
//     path.lineTo(0, size.height);

//     // var firstStart = Offset(size.width / 5, size.height);
//     // var firstEnd = Offset(size.width / 2.24, size.height - 50);

//     // path.quadraticBezierTo(
//     //     firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

//     // var secStart = Offset(size.width - (size.width / 3.23), size.height - 105);

//     // var secEnd = Offset(size.width, size.height - 10);

//     // path.quadraticBezierTo(secStart.dx, secStart.dy, secEnd.dx, secEnd.dy);

//     path.lineTo(size.width, size.height / 2);
//     path.lineTo(size.width, 0);
//     path.close();

//     return path;
//   }

//   @override
//   bool shouldReclip(oldClipper) => false;
// }
