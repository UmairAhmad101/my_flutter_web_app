import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myportfolio/helper/responsive.dart';
import 'package:myportfolio/models/experties.dart';
import 'package:myportfolio/models/moreWorks.dart';
import 'package:provider/provider.dart';

class MoreWorkSection extends StatelessWidget {
  void _showDialog(BuildContext context, int i) {
    final works = Provider.of<MoreWorks>(context, listen: false);
    final experties = Provider.of<ExpertiesList>(context, listen: false);
    // flutter defined function
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
              backgroundColor: Theme.of(context).primaryColor,
              elevation: 40,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0))),
              content: Builder(
                builder: (context) {
                  // Get available height and width of the build area of this widget. Make a choice depending on the size.
                  var height = MediaQuery.of(context).size.height;
                  var width = MediaQuery.of(context).size.width;

                  return Container(
                    height: height - 70,
                    width: width - 70,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: ResponsiveWidget.isSmallScreen(context)
                              ? ListView(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        child: Swiper(
                                          pagination: new SwiperPagination(
                                              margin: EdgeInsets.all(10)),
                                          control: new SwiperControl(
                                            color: Colors.greenAccent,
                                            disableColor: Colors.white,
                                          ),
                                          itemCount:
                                              works.moreWorks[i].images.length,
                                          itemBuilder: (context, i) {
                                            return Image.asset(
                                              works.moreWorks[i].images[i],
                                              fit: BoxFit.cover,
                                            );
                                          },
                                        ),
                                      ),
                                      flex: 4,
                                    ),
                                    Expanded(
                                      child: Container(
                                          child: Padding(
                                        padding: const EdgeInsets.only(
                                            top: 35, left: 15),
                                        child: ListView(
                                          children: [
                                            Text(
                                              works.moreWorks[i].title,
                                              style: GoogleFonts.inter(
                                                fontSize: 25,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                              'In this project:',
                                              style: GoogleFonts.inter(
                                                fontSize: 25,
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              height: 8,
                                            ),
                                            Container(
                                              height: experties.expertiesItem
                                                          .length >
                                                      6
                                                  ? 150
                                                  : 100,
                                              child: ListView.builder(
                                                shrinkWrap: true,
                                                scrollDirection: Axis.vertical,
                                                itemCount: experties
                                                    .expertiesItem.length,
                                                itemBuilder: (ctx, i) =>
                                                    Container(
                                                  child: Text(
                                                    experties
                                                        .expertiesItem[i].text,
                                                    style: GoogleFonts.lato(
                                                        color: Colors.white70),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                              child: Text(
                                                'Breif Description',
                                                style: GoogleFonts.inter(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              child: Text(
                                                works.moreWorks[i].longDesc,
                                                style: GoogleFonts.lato(
                                                  color: Colors.white70,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                      flex: 6,
                                    ),
                                  ],
                                )
                              : Row(children: [
                                  Expanded(
                                    child: Container(
                                      child: Swiper(
                                        pagination: new SwiperPagination(
                                            margin: EdgeInsets.all(10)),
                                        control: new SwiperControl(
                                          color: Colors.greenAccent,
                                          disableColor: Colors.white,
                                        ),
                                        itemCount:
                                            works.moreWorks[i].images.length,
                                        itemBuilder: (context, i) {
                                          return Image.asset(
                                            works.moreWorks[i].images[i],
                                            fit: BoxFit.cover,
                                          );
                                        },
                                      ),
                                    ),
                                    flex: 4,
                                  ),
                                  VerticalDivider(
                                    color: Colors.white,
                                    width: 10,
                                    endIndent: 10,
                                    indent: 10,
                                  ),
                                  Expanded(
                                    child: Container(
                                        child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 35, left: 15),
                                      child: ListView(
                                        children: [
                                          Text(
                                            works.moreWorks[i].title,
                                            style: GoogleFonts.inter(
                                              fontSize: 25,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          Text(
                                            'In this project:',
                                            style: GoogleFonts.inter(
                                              fontSize: 25,
                                              color: Colors.white,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            height:
                                                experties.expertiesItem.length >
                                                        6
                                                    ? 150
                                                    : 100,
                                            child: ListView.builder(
                                              shrinkWrap: true,
                                              scrollDirection: Axis.vertical,
                                              itemCount: experties
                                                  .expertiesItem.length,
                                              itemBuilder: (ctx, i) =>
                                                  Container(
                                                child: Text(
                                                  experties
                                                      .expertiesItem[i].text,
                                                  style: GoogleFonts.lato(
                                                      color: Colors.white70),
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 30,
                                          ),
                                          Container(
                                            child: Text(
                                              'Breif Description',
                                              style: GoogleFonts.inter(
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              works.moreWorks[i].longDesc,
                                              style: GoogleFonts.lato(
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                    flex: 6,
                                  ),
                                ]),
                        ),
                        Positioned(
                          top: 5,
                          right: 5,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(Icons.close, color: Colors.greenAccent),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    final moreWorks = Provider.of<MoreWorks>(context);
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Container(
          height: MediaQuery.of(context).size.height * 2,
          child: GridView.builder(
            itemCount: moreWorks.moreWorks.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio:
                    ResponsiveWidget.isSmallScreen(context) ? 1.5 : 1.3,
                crossAxisCount: ResponsiveWidget.isLargeScreen(context) ? 3 : 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemBuilder: (ctx, i) {
              return OurCardItem(
                onTap: () {
                  _showDialog(context, i);
                },
                shortDesc: moreWorks.moreWorks[i].shortDesc,
                title: moreWorks.moreWorks[i].title,
                id: moreWorks.moreWorks[i].id,
              );
            },
          )),
    );
  }
}

class OurCardItem extends StatefulWidget {
  final String title;
  final String shortDesc;
  final Function onTap;
  final String id;

  const OurCardItem({this.id, this.title, this.shortDesc, this.onTap});

  @override
  State<OurCardItem> createState() => _OurCardItemState();
}

class _OurCardItemState extends State<OurCardItem> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
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
        child: Card(
          elevation: isHover == true ? 100 : 20,
          color: Theme.of(context).primaryColor,
          child: AnimatedContainer(
            duration: Duration(microseconds: 900),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.folder_open_outlined,
                    color: Colors.greenAccent,
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  Flexible(
                    child: FittedBox(
                      child: Text(
                        widget.title,
                        style: GoogleFonts.inter(
                            color: isHover == true
                                ? Colors.greenAccent
                                : Colors.white,
                            fontSize: ResponsiveWidget.isLargeScreen(context)
                                ? 30
                                : 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  FittedBox(
                    child: Text(
                      widget.shortDesc,
                      style: GoogleFonts.inter(
                        color: Colors.white60,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
