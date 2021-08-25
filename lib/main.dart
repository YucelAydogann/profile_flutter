import 'package:flutter/material.dart';
import 'utilities/consts.dart';
import 'package:flutter/cupertino.dart';
import 'utilities/cards.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

void main() {
  runApp(FlutterProfile());
}

class FlutterProfile extends StatelessWidget {
  const FlutterProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: NewGradientAppBar(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF9800),
              Color(0xFFFF5722)
            ]
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.menu),
              Text('Yücel Aydoğan'),
              Icon(Icons.exit_to_app),
            ],
          ),
        ),
        body: ProfileEdit(),
      ),
    );
  }
}

class ProfileEdit extends StatefulWidget {

  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [ Color(0xFFFF9800), Color(0xFFFF5722)],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(

            child: Expanded(
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Avatar(foto: "assets/images/yucel.jpg", inlined: Color(0xFF212121), outlined: Color(0xFFFFA000)),
                  Text('Yücel Aydoğan', style: kNameStyle,),
                  Text('JR. Flutter Developer', style: kBottomNameStyle,),
                  SizedBox(width: 200, height: 40,
                    child: Divider(color: Color(0xFFFFECB3),),),
                  Cards(iconco: Color(0xFF212121), string: "+90 500 400 30 20", icons: Icons.call,subs: "Bu numaradan bana ulaşabilirsiniz",),
                  Cards(iconco: Color(0xFF212121), string: "yucelaydogan@flutter", icons: Icons.mail,subs: "Mail üzerinden iletişime geçebilirsiniz",)
                  // Card(
                  //   child: ListTile(
                  //     leading: Icon(Icons.mail, color: Color(0xFF212121)),
                  //     title: Text("yucelaydogan@flutter", style: kCardStyle),
                  //     tileColor: Color(0xFFFFECB3),
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

