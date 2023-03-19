import 'package:flutter/material.dart';
import 'package:bookhub/models/newbook_model.dart';
import '../constants/colours.dart';

class NewlyReleased extends StatelessWidget {
  const NewlyReleased({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 25, right: 6),
        itemCount: newbooks.length,
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
                image: DecorationImage(
                  // image: AssetImage('assets/images/AtomicHabits.jpg')
                  // we can call model here as we are using it
                  image: AssetImage(newbooks[index].image),
                )),
          );
        });
  }
}
