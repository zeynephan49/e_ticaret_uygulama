

import 'package:e_ticaret_uygulamasi/component/bottomNav.dart';
import 'package:e_ticaret_uygulamasi/productDetail.dart';
import 'package:flutter/material.dart';

import 'component/header.dart';
class CategoryPage extends StatelessWidget {
  String categoryTitle;
  CategoryPage(this.categoryTitle);
  List<Map> products = [
    {



      "isim": "Giuseppe Zanotti ",
      "fotoğraf": "assets/images/zanotti.jpg",
      "fiyat": "1000"
    },
    {
      "isim": "Giuseppe Zanotti ",
      "fotoğraf": "assets/images/zanotti3.jpg",
      "fiyat": "999"
    },
    {
      "isim": "Giuseppe Zanotti ",
      "fotoğraf": "assets/images/zanotti.jpg",
      "fiyat": "1000"
    },
    {
      "isim": "Giuseppe Zanotti",
      "fotoğraf": "assets/images/zanotti2.jpg",
      "fiyat":"1000",
    }

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
                children: [
                  Padding(padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //header başlık
                          header(categoryTitle, context),



                          //içerik kısmı
                         

                          Expanded(
                            child: GridView.count(
                              crossAxisCount: 1,
                              mainAxisSpacing: 5,
                              children: products.map((Map product) {
                                return buildContent(
                                    product["isim"], product["fotoğraf"],
                                    product["fiyat"],context);
                              }).toList(),),
                          )
                        ]),
                  ),
                  //bottom navigation bar
                  bottomNavigationBar("search"),
                ])));
  }
}

           

 Widget buildContent(String title, String photoUrl, String price,context){
  return  GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (context){
        return ProductDetailPage(title);
      }));
    },
    child: Container(

      padding:EdgeInsets.symmetric(horizontal: 8,vertical: 8),
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.08),
              blurRadius: 24,offset: Offset(0,16))]
      ),
      child:Column(crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        SizedBox(height: 10),
        Image.asset(photoUrl),
        SizedBox(height: 14),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(title,style: TextStyle(fontSize: 20,color: Colors.black),),
          Text("USD $price",style: TextStyle(fontSize: 12,color: Colors.black),),
        ],)
      ],) ,
    ),
  );
}
