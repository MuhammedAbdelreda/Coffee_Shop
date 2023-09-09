import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Info extends StatelessWidget {
  const Info({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'This is a simple description about our coffe shop, This is a simple description about our coffe shop, This is a simple description about our coffe shop',
            style:
                TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.4)),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Location',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          SizedBox(
            height: 7,
          ),
          Text(
            'Mail SKA pekanbaru',
            style:
                TextStyle(fontSize: 15, color: Colors.black.withOpacity(0.4)),
          ),
          SizedBox(
            height: 7,
          ),
          Row(
            children: [
              Image.asset('images/profile.png'),
              SizedBox(
                width: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Max Adiya',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Pretty cool',
                    style: TextStyle(
                        fontSize: 10, color: Colors.black.withOpacity(0.4)),
                  ),
                  SizedBox(
                    width: 250,
                  ),
                  SvgPicture.asset('images/like.svg'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
