import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_dev_final_req/widgets/HomeAppBar.dart';
import 'package:app_dev_final_req/widgets/Categories_Widgets.dart';
import 'package:app_dev_final_req/widgets/Item_Widget.dart';


class Homepage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
        HomeAppBar(),
          Container(
           // height: 500,
          padding: EdgeInsets.only(top: 15),
          decoration: BoxDecoration(
            color:  Colors.white,
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin:EdgeInsets.only(left: 5) ,
                        height: 50,
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "BROWSE HERE"
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),

                CategoriesWidgets(),

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),
                ItemsWiget(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:CurvedNavigationBar(
        height: 70,
        backgroundColor: Colors.transparent,
        onTap: (index){},
        color: Colors.blue,
          items:[
            Icon(
              Icons.home,
            size: 30,
            color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.list,
              size: 30,
              color: Colors.white,
            ),
          ],
      ),
    );
  }
}
