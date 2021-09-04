import 'package:e_ticaret_uygulamasi/component/header.dart';
import 'package:e_ticaret_uygulamasi/component/label.dart';
import 'package:flutter/material.dart';
class ProductDetailPage extends StatefulWidget {
  String productTitle;
  ProductDetailPage(this.productTitle);

  @override
  _ProductDetailPageState createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {



  List<Color> colors = [
    Color(0xFF52514F),
    Color(0xFF0001FC),
    Color(0xFF6F7972),
    Color(0xFFF5D8C0),
  ];
  
  List <int> sizies = [
    37,38,39,40,41
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //başlık
            header(widget.productTitle, context),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                //New yazan bölüm
                label("New"),

                SizedBox(height: 25,),

                //Ürün Foto
                Center(child: Image.asset("assets/images/zanotti3.jpg")),

                SizedBox(height: 30),

                //Renk seçimleri

                Text("Color",
                  style: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.w600,
                    color: Color(0xFF0A1034),
                  ),),
                SizedBox(height: 16),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   colorOption(Color(0xFF52514F)),
                    colorOption(Colors.black),
                    colorOption(Colors.pinkAccent),
                    colorOption(Colors.white),
                  ]


                ),

                //Numara Seçenekleri
                SizedBox(height: 32),

                Text("Size",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0A1034),
                ),),
                SizedBox(height: 16),
                
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sizeOption(37),
                    SizedBox(width: 15),
                    sizeOption(38),
                  SizedBox(width: 15),
                    sizeOption(39),
                   SizedBox(width: 15),
                    sizeOption(40),
                  ],
                ),
                
                
                  
                  SizedBox(height: 20),
                  
                //Sepete ekle buttonu
               Container(
                 width: double.infinity,
                 padding: EdgeInsets.symmetric(vertical: 16),
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color:
               Color(0xFF1F53E4)),
               child: Text("Add to Basket",
                 textAlign: TextAlign.center,
                 style: TextStyle(fontSize: 18,
               color: Colors.white,fontWeight: FontWeight.w600),),),

                ],









              ),




            )],
            ),
      ),
])));
  }
}



Widget colorOption( Color color){
  return GestureDetector(

    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(shape: BoxShape.circle,color: color,
          border: Border.all(color: Color(0xFF0001FC))),
      width: 23,
      height: 23,

    ),
  );
}

Widget sizeOption(int size){
  return Text("$size",
    style: TextStyle(color: Color(0xFF0001FC),fontSize: 16),
  );

}

