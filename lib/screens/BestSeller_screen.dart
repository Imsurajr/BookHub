import 'package:flutter/material.dart';
import '../constants/colours.dart';

class BestSeller extends StatelessWidget {
  BestSeller({Key? key}) : super(key: key);

  int best=1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 25, right: 6),
        itemCount: 8,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          best=index+1;
          return  Container(
              margin: EdgeInsets.only(right: 19),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kMainColor,),
              child: Image.asset("assets/images/bestseller${index + 1}.jpg")

          );
          //   Container(
          //   height: 210,
          //   width: 153,
          //   margin: EdgeInsets.only(right: 19),
          //   decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(10),
          //       color: kMainColor,
          //       image: DecorationImage(
          //         // image: AssetImage('assets/images/AtomicHabits.jpg')
          //         // we can call model here as we are using it
          //         image: AssetImage("assets/images/newr$best.jpg"),
          //       )),
          // );
        });

}

/*

 */}