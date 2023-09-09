import 'package:flutter/material.dart';
import 'package:flutter_application_10/dummy.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              child: Image(image: AssetImage(review[0])),
            ),
            Positioned(
              left: 30,
              child: Image(image: AssetImage(review[1])),
            ),
            Positioned(
              left: 60,
              child: Image(image: AssetImage(review[2])),
            ),
            Positioned(
              left: 90,
              child: Image(image: AssetImage(review[3])),
            )
          ],
        ),
        SizedBox(width: 100,),
        Text('204 Reviewers',style: TextStyle(fontSize: 15,color: Colors.black.withOpacity(0.5)),),
      ],
    );
  }
}
