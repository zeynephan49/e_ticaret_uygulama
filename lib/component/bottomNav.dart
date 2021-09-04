import 'package:flutter/material.dart';
Widget bottomNavigationBar(String page){
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buildNavIcon(active: page == "home", iconData: Icons.home_filled),
          buildNavIcon(active: page == "search", iconData: Icons.search),
          buildNavIcon(active: page == "cart", iconData: Icons.shopping_cart),
          buildNavIcon(active: page == "profil", iconData: Icons.person),
        ],
      ),),
  );
}

Widget buildNavIcon({required active,required IconData iconData}){
  return Icon(iconData,
    size: 20,color: Color(active ? 0xFF0001FC : 0xFF0A1034),);
}