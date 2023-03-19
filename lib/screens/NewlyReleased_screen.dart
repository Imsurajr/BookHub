import 'package:flutter/material.dart';
import '../constants/colours.dart';

class NewlyReleased extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 25, right: 6),
        itemCount: 6,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          int num = index + 1;
          return  Container(
            height: 210,
            width: 153,
            margin: EdgeInsets.only(right: 19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kMainColor,

            ),
            child: Image.asset("assets/images/newr${index + 1}.jpg"),
          );
          },
        );
    }
}