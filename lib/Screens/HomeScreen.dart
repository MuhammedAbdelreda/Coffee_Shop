import 'package:flutter/material.dart';
import 'package:flutter_application_10/home/trending_list.dart';

import '../home/suggetion.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(97, 201, 186, 186),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.location_on,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'PEKANBARU',
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(width: 260,),
                    Image(image: AssetImage('images/profile.png'),),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Disocer',
                        style: TextStyle(letterSpacing: 2, fontSize: 20),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        'Coffee Shop',
                        style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 7,),
                Container(
                  width: 440,
                  margin: EdgeInsets.only(right: 5,left: 5),
                  padding: EdgeInsets.only(left: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(97, 201, 186, 186),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromRGBO(206, 191, 191, 0.122),
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0, 1),
                      ),
                    ],
                  ),
                  child: const TextField(
                    cursorColor: Colors.black45,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.keyboard_option_key_sharp),
                      border: InputBorder.none,
                      hintText: 'search',
                      prefixIconColor:Colors.black45,
                      suffixIconColor: Colors.black45,
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Trending',style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),),
                      SizedBox(height: 7,),
                      Trending_list(),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Suggetion',style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20 ),),
                      SizedBox(height: 7,),
                      Suggetion_list(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
