import 'package:flutter/material.dart';

class LoginAuth extends StatefulWidget {
  @override
  _LoginAuthState createState() => _LoginAuthState();
}

class _LoginAuthState extends State<LoginAuth> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      color: Colors.white,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color:  Color(int.parse("0xff${"EBF0FF"}")),
              borderRadius: BorderRadius.circular(50),

            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 17,
                  height: 17,
                  child: Image(image: AssetImage("assets/300221.png"),),
                ),
                Container(
                  width: size.width * .5,
                  child: Text(
                    "Login with google",
                    style: TextStyle(color: Color(int.parse("0xff${"9098B1"}")) ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 18, horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
              color:  Color(int.parse("0xff${"EBF0FF"}")),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 17,
                  height: 17,
                  child: Image(image: AssetImage("assets/facebook.png"),),
                ),
                Container(
                  width: size.width * .5,
                  child: Text(
                    "Login with Facebook",
                    style: TextStyle(color:Color(int.parse("0xff${"9098B1"}"))),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                        color: Colors.indigo, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text(
                            "Don't have an account",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 4),
                          child: Text(
                            "Sign Up?",
                            style: TextStyle(color: Colors.indigo),
                          ),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
