import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const maCouleur = Color(0xFF54D3C2);
void main(){
  runApp(MyApp());

}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Application hotel',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RechercheHotel(),
            HotelSession(),

          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  Size get preferredSize => new Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Accueil',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800 ,

        ),

      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: (){},
        icon: Icon(
          Icons.arrow_back,
          color: Colors.grey[800],
          size: 20,

        ),
      ),
      actions:[
        IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.place,
            color: Colors.grey[800],
            size: 20,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: Icon(
            Icons.favorite_outline_rounded,
            color: Colors.grey[800],
            size: 20,

          ),
        ),


      ],
    );
  }


}
class RechercheHotel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5,
                            offset: Offset(1,1)
                        )
                      ]
                  ),
                  height: 50,

                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Ville',
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                color: Colors.blue,
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            height: 50,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
class HotelSession extends StatelessWidget {
  const HotelSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.white,
    );
  }
}

