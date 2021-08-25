import 'package:flutter/material.dart';
import 'consts.dart';

class Cards extends StatelessWidget {

  Cards({required this.iconco, required this.string, required this.icons,required this.subs});

  final Color iconco;
  final String string;
  final String subs;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
      child: ListTile(
        leading: Icon(icons, color: iconco ,),
        title: Text("$string",style: kCardStyle),
        tileColor: Color(0xFFFFECB3),
        subtitle: Text("$subs", style: TextStyle(fontFamily: "AmaticSC",color: Colors.blueGrey, fontSize: 12,fontWeight: FontWeight.bold),),

      ),
    );
  }
}

class Avatar extends StatelessWidget {

  Avatar({required this.foto, required this.inlined, required this.outlined});

  final String foto;
  final Color outlined;
  final Color inlined;



@override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 73,
      backgroundColor: Color(0xFFFFA000),
      child: CircleAvatar(
        radius:65,
        backgroundColor: Color(0xFF212121),
        child: CircleAvatar(
          backgroundImage: AssetImage("$foto"),
          radius: 60,
        ),
      ),
    );
  }
}

// Color(0xFFFFA000)
// assets/images/yucel.jpg

//Color(0xFF212121)