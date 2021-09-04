import 'package:e_ticaret_uygulamasi/categories.dart';
import 'package:e_ticaret_uygulamasi/component/bottomNav.dart';
import 'package:e_ticaret_uygulamasi/component/label.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SafeArea(
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: ListView(

              children: [
                // Başlık
                buildBaslik(),
                // Banner
                buildBanner(),
                //Buttonlar
                Padding(padding: EdgeInsets.only(top: 48), child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //ilk eleman

                    buildCircleNavige(text: "Categories", icon: Icons.menu, widget:CategoriesPage(),context: context ),
                    buildCircleNavige(text:  "Favorites", icon: Icons.favorite_border, widget: Icon(Icons.favorite_border)),
                    buildCircleNavige(text: "Gifts", icon: Icons.card_giftcard, widget: Icon(Icons.card_giftcard)),
                    buildCircleNavige(text: "Best selling", icon: Icons.people_outline_rounded, widget: Icon(Icons.favorite_border))
                  ],
                ),
                ),
                SizedBox(height: 40,),
                //Sales title
                Text("Sales",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33,color:Colors.black),),
                SizedBox(height: 16,),

                //Sales items
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                [buildsalesItem(
                  text: "İphone11",
                  photoUrl: "assets/images/iphone11.jpg",
                  discount: "-50%",
                  screenWidth: screenWidth,),
                  buildsalesItem(text: "İphone11", photoUrl:"assets/images/iphone11.jpg" ,
                      discount: "50%", screenWidth: screenWidth)

                  ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [buildsalesItem(
                    text: "İphone11",
                    photoUrl: "assets/images/iphone11.jpg",
                    discount: "-50%",
                    screenWidth: screenWidth,),
                    buildsalesItem(text: "İphone11", photoUrl:"assets/images/iphone11.jpg" ,
                        discount: "50%", screenWidth: screenWidth)

                  ],),





              ],
            ),
          ),
          
          //Bottom Navigation Bar
        bottomNavigationBar("home"),
        ],

      ),
    ),
    );
  }
}


Widget buildCircleNavige(
    {
      required String text,
      required IconData icon,
      required Widget widget,
      BuildContext? context,
    }){
  return GestureDetector(
    onTap: (){
      Navigator.push(context!, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },

    child: Column(
      children: [
        Container(

          padding: EdgeInsets.symmetric(horizontal: 19,vertical: 22),
          decoration: BoxDecoration(
              shape: BoxShape.circle,color: Colors.black26),
          child: Icon
            (icon,
            color: Colors.grey,size: 18,),),
        SizedBox(height: 8,),
        Text(text,
          style: TextStyle(fontSize: 14,color: Colors.grey[900],fontWeight: FontWeight.w500),),],
    ),
  );
}

Widget buildsalesItem({required String text,required String photoUrl, required String discount,required double screenWidth}){
  return Container(
    color: Colors.white70,
    width: (screenWidth - 60) * 0.5,
    padding: EdgeInsets.only(left: 12,top: 12,right: 12,bottom: 21),
    child: Column(children: [
      label(discount),

      Image.asset(photoUrl,width: 150),
      SizedBox(height: 5,),
      Text(text,style: TextStyle(fontSize: 15,color: Color(0xFF0A1034)),),

    ]),
  );
}

Widget buildBaslik(){
  return  Padding(
    padding: const EdgeInsets.only(top: 24.0),
    child: Text(
      "Home",
      style: TextStyle(fontSize: 33,color: Color(0xFF0A1034),
          fontWeight: FontWeight.bold),),
  );
}
Widget buildBanner(){
  return Padding(padding: EdgeInsets.only(top: 24.0),
    child: Container(height: 100,
      width: double.infinity,
      padding: EdgeInsets.only(left:24,right: 36,top: 40),
      decoration: BoxDecoration(color: Colors.grey[900],
          borderRadius: BorderRadius.circular(6.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/images/speaker.png",height: 40,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text("myZeyn",style: TextStyle(color: Colors.white,
                fontSize: 18.0,fontWeight: FontWeight.w600),
            ),
              SizedBox(height: 10,),
              Text("by Zeynep Han",style: TextStyle(color: Colors.white,
                  fontSize: 9,fontWeight: FontWeight.w500),)
            ],
          ),
          Image.asset("assets/images/speaker.png",height: 40),

        ],
      ),
    ),);
}



