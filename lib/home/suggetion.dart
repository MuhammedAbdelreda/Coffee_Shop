import 'package:flutter/material.dart';
import 'package:flutter_application_10/dummy.dart';

class Suggetion_list extends StatelessWidget {
  const Suggetion_list({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: suggestion.length *70,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        //physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: suggestion.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 0,right: 20),
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 151, 79, 53).withOpacity(0.8),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(suggestion[index]['imageUrl']),
                      ),
                      // SizedBox(
                      //   width: 20,
                      // ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            suggestion[index]['title'],
                            style:
                                TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                          ),
                          Text(
                            suggestion[index]['subtitle'],
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 10,
                                color: Colors.black.withOpacity(0.8)),
                          ),
                        ],
                      ),
                       SizedBox(width: 30,),
                      Container(
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 151, 79, 53).withOpacity(0.8),
                            borderRadius: BorderRadius.circular(10)),
                            child: Icon(Icons.chevron_right_rounded,color: Colors.white,size: 35,),
                      ),
                      SizedBox(height: 25,),
                    ],
                  ),
                  SizedBox(height: 10,),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
