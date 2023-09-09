import 'package:flutter/material.dart';
import 'package:flutter_application_10/detail/DetailList.dart';
import 'package:flutter_application_10/detail/Info.dart';
import 'package:flutter_application_10/dummy.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../detail/ReviewList.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(97, 201, 186, 186),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(child: SvgPicture.asset('images/chevron-left.svg'),onPressed: () {
                      Navigator.pop(context);
                    },),
                    // Icon(
                    //   Icons.chevron_left,
                    //   size: 30,
                    // ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    SvgPicture.asset('images/bookmark.svg'),
                    // Icon(
                    //   Icons.bookmark_add_outlined,
                    //   size: 30,
                    // ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        'Jnji',
                        style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Coffee from the heart',
                        style: TextStyle(
                            fontWeight: FontWeight.w900, fontSize: 15,color: Colors.black.withOpacity(0.4),),
                            
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                ReviewList(),
                SizedBox(height: 10,),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Photos',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        Text('See all',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 10,),
                    DetailList(),
                  ],
                ),
                SizedBox(height: 10,),
                Info(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
