import 'package:flutter/material.dart';
import 'package:flutter_application_10/dummy.dart';

class DetailList extends StatelessWidget {
  const DetailList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: SizedBox(
        height: 221,
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: photos.length,
          itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: 25),
            child: SizedBox(
              height: 221,
              width: 310,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  photos[index],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
