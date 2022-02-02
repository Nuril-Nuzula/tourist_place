import 'package:flutter/material.dart';
import 'package:tourist_place/detail_screen.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Healing',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {
  var fontOxygen = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: SingleChildScrollView(
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           //stretch itu biar tulisan nya ke tengah/center
           children: <Widget>[
             Image.asset('images/mt_fuji.jpg',width: 300,height: 300, ),
             Container(
                 margin: EdgeInsets.only(top: 16.0),
                 child: Text(
                   'MT.Fuji',
                   textAlign: TextAlign.center,
                   style: TextStyle(fontFamily: 'Staatliches',fontSize: 24.0, fontWeight: FontWeight.bold),
                 )),
             Container(
               margin: EdgeInsets.symmetric(vertical: 16),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Column(
                     children: <Widget>[
                       Icon(Icons.calendar_today),
                       SizedBox(height: 8,),
                       Text('Just Weekend', style: fontOxygen,)
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       Icon(Icons.timer),
                       SizedBox(height: 8,),
                       Text('09.00 - 23.00' , style: fontOxygen,)
                     ],
                   ),
                   Column(
                     children: <Widget>[
                       Icon(Icons.monetization_on_outlined),
                       SizedBox(height: 8,),
                       Text('Rp.1,000,000' , style: fontOxygen,)
                     ],
                   ),
                 ],
               ),
             ),
             Container(
               child: Text(
                 'Located In Jepang. Mount Fuji (富士山, Fujisan) is with 3776 meters Japan highest mountain. It is not surprising that the nearly perfectly shaped volcano has been worshiped as a sacred mountain and experienced big popularity among artists and common people throughout the centuries.Mount Fuji is an active volcano, which most recently erupted in 1707. It stands on the border between Yamanashi and Shizuoka prefectures and can be seen from Tokyo and Yokohama on clear days.',
                 textAlign: TextAlign.center,
                 style: TextStyle(fontFamily:'Staatliches',fontSize: 16),
               ),
             ),
             Container(
               height: 150,
               child: ListView(
                 scrollDirection: Axis.horizontal,
                 children: <Widget>[
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.network('http://d20aeo683mqd6t.cloudfront.net/articles/title_images/000/039/446/medium/oshino-hakkai-fujis1501321982.jpg?2021', width: 300,height: 300,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.network('http://4.bp.blogspot.com/-rTclE5_DeLg/U_v2zvg_TrI/AAAAAAAAElM/p5mnUsl2RdQ/s1600/mt-fuji-japanese-sweets-white-chocolate.jpg', width: 300,height: 300,),
                   ),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuvok9JjY0Pbsn3da-kXmDpg2pVw3diZ5pOw&usqp=CAU', width: 300,height: 300,),
                   ),
                 ],
               ),
             ),
           ],
         ),
       ),
      ),
    );
  }
}
