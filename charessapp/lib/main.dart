import 'package:flutter/material.dart';
import 'package:charessapp/pages/homepage.dart';
import 'package:charessapp/pages/Cart_page.dart';
import 'package:charessapp/pages/Item_Page.dart';


void main()=> runApp(Charess());

class Charess extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      routes: {
        "/":(context)=>Homepage(),
        "CartPage":(context)=>CartPage(),
        "ItemPage":(context)=>ItemPage(),

      },
    );
  }
}
