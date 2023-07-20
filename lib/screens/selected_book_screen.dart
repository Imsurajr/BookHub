import 'package:bookhub/constants/colours.dart';
import 'package:bookhub/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:bookhub/models/popular_model.dart' as popular;
import 'package:google_fonts/google_fonts.dart';
import 'package:bookhub/widgets/custom_tab_indicator.dart';

class SelectedBookScreen extends StatefulWidget {
  final popular.PopularBookModel popularBookModel;

  SelectedBookScreen({Key? key, required this.popularBookModel})
      : super(key: key);

  @override
  State<SelectedBookScreen> createState() => _SelectedBookScreenState();
}

class _SelectedBookScreenState extends State<SelectedBookScreen> {
  int dessum = 1;
  int _clicks = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 49,
          margin: EdgeInsets.only(left: 14, right: 14, bottom: 10),
          color: Colors.transparent,
          child: ElevatedButton(
            child: Text(
              "ADD TO LIBRARY",
              style: GoogleFonts.openSans(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: kWhiteColor,
              ),
            ),
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kBackgroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
          ),
        ),
        body: Container(
            child: CustomScrollView(
              slivers: <Widget>[
                //this is list of widgets
                SliverAppBar(
                  pinned: true,
                  backgroundColor: kBackgroundColor,
                  expandedHeight: MediaQuery.of(context).size.height * 0.5,
                  flexibleSpace:
                  Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 15,
                          top: 35,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Container(
                              width: 32,
                              height: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: kWhiteColor,
                              ),
                              child: Icon(Icons.arrow_back_ios_new),
                            ),
                          ),
                        ),
                        Align(
                         alignment: Alignment.bottomCenter,
                          child: Container(
                            width: MediaQuery.of(context).size.width*0.75,
                            height: 172,
                            margin: EdgeInsets.only(bottom: 62),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                scale: 1,
                                image: AssetImage(
                                  widget.popularBookModel.image,
                                ),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text(
                          widget.popularBookModel.title,
                          style: GoogleFonts.pacifico(
                            fontSize: 27,
                            color: kBlackColor,
                            fontWeight: FontWeight.w200,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Text(
                          widget.popularBookModel.author,
                          style: GoogleFonts.openSans(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: kLightGreyColor,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 25, left: 25),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$',
                              style: GoogleFonts.openSans(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: kBlackColor,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              widget.popularBookModel.price,
                              style: GoogleFonts.openSans(
                                fontSize: 32,
                                fontWeight: FontWeight.w900,
                                color: kBlackColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 28,
                        margin: EdgeInsets.only(top: 23, bottom: 36),
                        padding: EdgeInsets.only(left: 25),
                        child: DefaultTabController(
                          length: 3,
                          child: TabBar(
                            labelPadding: EdgeInsets.all(0),
                            indicatorPadding: EdgeInsets.all(0),
                            isScrollable: true,
                            labelColor: kBlackColor,
                            unselectedLabelColor: kLightGreyColor,
                            labelStyle: GoogleFonts.openSans(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                            unselectedLabelStyle: GoogleFonts.openSans(
                                fontSize: 16, fontWeight: FontWeight.w500),
                            indicator: RoundedRectangleTabIndicator(
                                weight: 2, width: 30, color: kBlackColor),
                            tabs: [
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                          if (_clicks == 0) {
                                            return kBackgroundColor; // change to the color you want when the button is clicked
                                          }
                                          return kMainColor; // default button color
                                        },
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _clicks = 0;
                                        dessum = 1;
                                        print('Summary pressed');
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        'About Book',
                                        style: GoogleFonts.openSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: kBlackColor,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(right: 39),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                          if (_clicks == 2) {
                                            return kBackgroundColor; // change to the color you want when the button is clicked
                                          }
                                          return kMainColor; // default button color
                                        },
                                      ),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10.0),
                                        ),
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        dessum = 2;
                                        _clicks = 2;
                                        print('Summary pressed');
                                      });
                                    },
                                    child: Container(
                                      child: Text(
                                        'Summary',
                                        style: GoogleFonts.openSans(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700,
                                          color: kBlackColor,
                                        ),
                                      ),
                                      margin: EdgeInsets.only(right: 39),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
                        child: Text(
                          dessum == 1
                              ? widget.popularBookModel.description
                              : widget.popularBookModel.summary,
                          style: GoogleFonts.slabo27px(
                            fontSize: 25,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),
        );
    }
}