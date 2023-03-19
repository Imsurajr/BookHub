import 'package:bookhub/constants/colours.dart';
import 'package:bookhub/screens/selected_book_screen.dart';
import 'package:bookhub/widgets/custom_tab_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/newbook_model.dart';
import '../models/popular_model.dart';
import 'NewlyReleased_screen.dart';
import 'BestSeller_screen.dart';
import 'Trending_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

int selected = 0;
int _clicks = 0;


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: kMainColor,
        body: Container(
            child: ListView(
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hello, ',
                            style: GoogleFonts.openSans(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: kDarkGreyColor,
                            )),
                        Text('Explore New Books',
                            style: GoogleFonts.openSans(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: kBlackColor,
                            )),
                      ]),
                ),
                Container(
                  height: 42,
                  margin: EdgeInsets.only(top: 18, left: 25, right: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor,
                  ),
                  child: Stack(children: [
                    TextField(
                      decoration: InputDecoration(
                        contentPadding:
                        EdgeInsets.only(left: 19, right: 50, bottom: 8),
                        border: InputBorder.none,
                        hintText: 'Enter book name..',
                        hintStyle: GoogleFonts.openSans(
                            fontSize: 14,
                            color: kDarkGreyColor,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      left: 320,
                      top: 9,
                      child: Icon(Icons.search),
                    ),
                  ]),
                ),
                Container(
                  height: 25,
                  margin: EdgeInsets.only(top: 15, right: 8),
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
                            weight: 2, width: 20, color: kBlackColor),
                        tabs: [
                          // Tab(
                          //
                          //   child: ElevatedButton(
                          //     onPressed: () {},
                          //     child: Container(
                          //       child: Text('Newly Released'),
                          //       margin: EdgeInsets.only(right: 23),
                          //     ),
                          //   ),
                          // ),
                          // Tab(
                          //   child: Container(
                          //     child: Text('Best Seller'),
                          //     margin: EdgeInsets.only(right: 23),
                          //   ),
                          // ),
                          // Tab(
                          //   child: Container(
                          //     child: Text('Trending'),
                          //     margin: EdgeInsets.only(right: 23),
                          //   ),
                          // ),
                          Row(children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                // backgroundColor:  MaterialStateProperty.all(kBackgroundColor),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  )),
                              onPressed: () {
                                setState(() {
                                  _clicks = 0;
                                  selected = 0;
                                  print('Newly Released pressed ,$selected');
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text('Newly Released',
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: kBlackColor,
                                      )),
                                ),
                                margin: EdgeInsets.only(right: 20),
                              ),
                            ),
                          ]),
                          Row(children: [
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _clicks = 1;
                                  selected = 1;
                                  print('Best Seller pressed ,$selected');
                                });
                              },
                              style: ButtonStyle(
                                // backgroundColor: MaterialStateProperty.all(kMainColor),
                                  backgroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                      if (_clicks == 1) {
                                        return kBackgroundColor; // change to the color you want when the button is clicked
                                      }
                                      return kMainColor; // default button color
                                    },
                                  ),
                                  shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  )),
                              child: Container(
                                child: Center(
                                  child: Text('Best Seller',
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: kBlackColor,
                                      )),
                                ),
                                margin: EdgeInsets.only(right: 20),
                              ),
                            ),
                          ]),
                          Row(children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                // backgroundColor:  MaterialStateProperty.all(kMainColor),
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
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                  )),
                              onPressed: () {
                                setState(() {
                                  _clicks = 2;
                                  selected = 2;
                                  print('Trending pressed ,$selected');
                                });
                              },
                              child: Container(
                                child: Center(
                                  child: Text('Trending',
                                      style: GoogleFonts.openSans(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: kBlackColor,
                                      )),
                                ),
                                margin: EdgeInsets.only(right: 20),
                              ),
                            ),
                          ]),
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 21),
                  height: 210,
                  child: ListView.builder(
                    padding: EdgeInsets.only(left: 25, right: 6),
                    itemCount: newbooks.length,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        height: 210,
                        width: width,
                        margin: EdgeInsets.only(right: 19),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: kMainColor,
                        ),
                        child: selected == 0 ? NewlyReleased() : selected == 1 ? BestSeller() : Trending(),
                      );
                    },
                  ),

                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 25),
                  child: Text('Popular',
                      style: GoogleFonts.openSans(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: kBlackColor,
                      )),
                ),
                ListView.builder(
                    padding: EdgeInsets.only(right: 25, top: 25, left: 25),
                    itemCount: populars.length,
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          print('List View Tapped');
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SelectedBookScreen(
                                popularBookModel: populars[index],
                              ),
                            ),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(),
                          margin: EdgeInsets.only(bottom: 19),
                          height: 81,
                          width: MediaQuery.of(context).size.width - 50,
                          //isse dono trf se 25 25 ajayegi
                          color: kBackgroundColor,
                          child: Row(children: [
                            Container(
                              height: 81,
                              width: 62,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(
                                  image: AssetImage(populars[index].image),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    populars[index].title,
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    populars[index].author,
                                    // style: GoogleFonts.openSans(
                                    //   fontSize: 10,
                                    //   fontWeight: FontWeight.w400,
                                    //   color: kBlackColor,
                                    // ),
                                    style: GoogleFonts.dancingScript(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: kBlackColor,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    '\$' + populars[index].price,
                                    style: GoogleFonts.openSans(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: kBlackColor,
                                    ),
                                  ),
                                ]),
                          ]),
                        ),
                      );
                    })
              ],
            ),
            ),
        );
    }
}