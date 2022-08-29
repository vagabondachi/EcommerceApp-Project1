import 'package:flutter/material.dart';
import 'package:app_dev_final_req/pages/homepage.dart';
import 'package:app_dev_final_req/pages/Cart_page.dart';
import 'package:app_dev_final_req/pages/Item_Page.dart';


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
