import 'package:flutter/material.dart';
import 'package:bookhub/models/newbook_model.dart';
import '../constants/colours.dart';

class bestSeller extends StatelessWidget {
   bestSeller({Key? key}) : super(key: key);

   int best=1;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.only(left: 25, right: 6),
        itemCount: newbooks.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          best=index+1;
          return  Container(
            height: 210,
            width: 153,
            margin: EdgeInsets.only(right: 19),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: kMainColor,
              image: DecorationImage(
                image: AssetImage("assets/images/newr${index + 1}.jpg"),
                fit: BoxFit.cover,
              ),
            ),
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
}

/*

 */