import 'package:flutter/material.dart';

class CategoriesWidgets extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children: [
          for (int i=1; i<8; i++)
          Container(
            margin: EdgeInsets.symmetric(horizontal: 10),
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("images/$i.jpg",
              width: 30,
              height: 30,
              ),
              Text(
                "Chaeyoung",
                style: TextStyle(
                  fontWeight:FontWeight.bold,
                  fontSize:16,
                  color:Colors.blue,
                ),
              ),

            ],
          ),
          ),
        ],
      ) ,
    );
  }
}
