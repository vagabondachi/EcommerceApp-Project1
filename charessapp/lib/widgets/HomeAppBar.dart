import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          Icon(Icons.sort,
          size: 30,
          color: Colors.blue,
          ),
          Padding(padding: EdgeInsets.only(
            left: 20,
          ),
            child:Text(
              'CHARESS SHOP',
              style: TextStyle(
                fontSize:23,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ) ,
          ),
          Spacer(),
          Badge(
            badgeColor: Colors.red,
            padding: EdgeInsets.all(7),
            badgeContent: Text(
              "1",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context, "CartPage");
              },
              child: Icon(
                Icons.shopping_bag_outlined,
                size: 32,
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
