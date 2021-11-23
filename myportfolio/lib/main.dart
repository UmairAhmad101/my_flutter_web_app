import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myportfolio/models/experties.dart';
import 'package:myportfolio/models/moreWorks.dart';
import 'package:myportfolio/models/work.dart';
import 'package:myportfolio/widgets/drawer.dart';
import 'package:myportfolio/widgets/sideLine.dart';
import 'package:myportfolio/widgets/sideSocialContact.dart';
import 'package:myportfolio/widgets/topNavigationBar.dart';
import 'package:provider/provider.dart';

import 'helper/responsive.dart';
import './screens.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Work()),
        ChangeNotifierProvider(create: (context) => Works()),
        ChangeNotifierProvider(create: (context) => MoreWorks()),
        ChangeNotifierProvider(create: (context) => ExpertiesList()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UmairAhmad',
        theme: ThemeData(
          primaryColor: Color(0xff0A192F),
          scaffoldBackgroundColor: Color(0xff0A192F),
          canvasColor: Color(0xff0A192F),
        ),
        home: FutureBuilder(
          future: Firebase.initializeApp(),
          builder: (ctx, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Home();
            }
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  final homeKey = GlobalKey();
  final workKey = GlobalKey();
  final contactKey = GlobalKey();
  final aboutKey = GlobalKey();
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(
        context,
        scaffoldKey,
      ),
      endDrawer: OurDrawer(),
      body: Stack(
        children: [
          ResponsiveWidget(
            largeScreen: LargeScreen(),
            mediumScreen: MeduimScreen(),
            smallScreen: SmallScreen(),
          ),
          // sideLine(
          //   context: context,
          //   topPositioning: 70,
          //   rightPositioning: 35,
          // ),
          SideSocialContact(),
          sideLine(
              context: context, rightPositioning: 35, bottomPositioning: 100),
        ],
      ),
    );
  }
}
