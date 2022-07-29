import 'package:flutter/material.dart';

class LoginHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return  Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(int.parse("0xff${"F2F5F9"}")),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(150))

      ),
      child:Align(
        alignment: Alignment.center,
        child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          SizedBox(
            height: 50,
          ),
          Container(
            width: size.width*.5,
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Text("Welcome to", textAlign: TextAlign.start, style: TextStyle(color:  Color(int.parse("0xff${"000140"}")), fontWeight: FontWeight.bold, fontSize: 15),),
          ),
          Container(
            width: size.width*.6,
            padding: EdgeInsets.symmetric(vertical: 3),
            child: Text("RATKAPP", style: TextStyle(color: Color(int.parse("0xff${"000140"}")), fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: 3),),
          ),
          SizedBox(
            height: 10,
          ),
         Container(
            width: size.width*.5,
            padding: EdgeInsets.only(top: 20),
            child: Text("Sign in to continue", textAlign: TextAlign.center, style: TextStyle(color: Color(int.parse("0xff${"000140"}")), letterSpacing: 2, fontWeight: FontWeight.bold, fontSize: 13),),
          )
        ],
      ),
    ));
  }
}
