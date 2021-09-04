

import 'package:e_ticaret_uygulamasi/Category.dart';
import 'package:e_ticaret_uygulamasi/component/bottomNav.dart';
import 'package:e_ticaret_uygulamasi/component/header.dart';
import 'package:flutter/material.dart';


class CategoriesPage extends StatelessWidget {

 final List<String> categories = [
    "All",
    "Woman",
    "Man",
    "Child",
    "Smartphones",
    "Accessories",
   "Baby",
   "Home"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(
      child: Stack(
        children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Header
              header("Categories", context),
                SizedBox(height: 16,),

             Expanded(
               child: ListView(children :
               categories.map((String title) => buildCategory(title,context)).toList(),


               ),
             ),],
            ),
          ),
         //Bottomnavigation
         bottomNavigationBar("search"),
        ],
      ),
    ),);
  }
}
  Widget buildCategory(String title, context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return CategoryPage(title);
        }));
      },
      child: Container(

        padding: EdgeInsets.all(24),
        margin: EdgeInsets.only(bottom: 16),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 4,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Text(
          title, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18,

            color: Colors.black),),
      ),



    );
  }



