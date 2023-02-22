import 'package:flutter/material.dart';
import 'package:bookhub/models/newbook_model.dart';
import '../constants/colours.dart';

class trending extends StatelessWidget {
  const trending({Key? key}) : super(key: key);

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
              image: AssetImage("assets/images/newr${index + 1}.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:bookhub/models/newbook_model.dart';
// import '../constants/colours.dart';
//
// class trending extends StatelessWidget {
//    trending({Key? key}) : super(key: key);
//
//   int trend=1;
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//         padding: EdgeInsets.only(left: 25, right: 6),
//         itemCount: newbooks.length,
//         physics: BouncingScrollPhysics(),
//         scrollDirection: Axis.horizontal,
//         itemBuilder: (context, index) {
//           trend = index+1;
//           return Row(
//             children: newbooks.map((book) {
//               return Container(
//                 height: 210,
//                 width: 153,
//                 margin: EdgeInsets.only(right: 19),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: kMainColor,
//                   image: DecorationImage(
//                     image: AssetImage("assets/images/newr${index + 1}.jpg"),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               );
//             }).toList(),
//           );
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
          //         image: AssetImage("assets/images/newr$trend.jpg"),
          //       )),
          // );
//         });
//   }
// }
