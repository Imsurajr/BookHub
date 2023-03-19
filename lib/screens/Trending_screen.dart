import 'package:flutter/material.dart';
import '../constants/colours.dart';

class Trending extends StatelessWidget {
  const Trending({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(left: 25, right: 6),
      itemCount: 9,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          height: 210,
          width: 153,
          margin: EdgeInsets.only(right: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: kMainColor,
          ),
          child: Image.asset("assets/images/trend${index + 1}.jpg"),
        );
      },
    );
  }
}
