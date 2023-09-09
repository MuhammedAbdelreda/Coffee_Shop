import 'package:flutter/material.dart';
import 'package:flutter_application_10/Screens/DetailScreen.dart';
import '../dummy.dart';

class Trending_list extends StatelessWidget {
  const Trending_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 346,
      width: double.infinity,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: trending.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 25),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(),));
                },
                child: Stack(
                  children: [
                    SizedBox(
                      height: 346,
                      width: 245,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(
                          trending[index]['imageUrl'],
                          fit: BoxFit.cover,
                          color: Colors.black.withOpacity(0.1),
                          colorBlendMode: BlendMode.darken,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 20,
                      child: Column(
                        children: [
                          Text(trending[index]['title'],style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                          Text(trending[index]['subtitle'],style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
