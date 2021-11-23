import 'package:flutter/material.dart';
import 'package:myportfolio/helper/responsive.dart';

Widget sideLine(
    {double topPositioning,
    double bottomPositioning,
    double rightPositioning,
    BuildContext context}) {
  return !ResponsiveWidget.isSmallScreen(context)
      ? Positioned(
          bottom: bottomPositioning,
          right: rightPositioning,
          top: topPositioning,
          child: Container(
            color: Colors.white60,
            width: 1,
            height: 100,
          ),
        )
      : Container();
}
