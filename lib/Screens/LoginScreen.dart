import 'package:flutter/material.dart';

import 'Widgets/LoginWidget/LoginAuth.dart';
import 'Widgets/LoginWidget/LoginForm.dart';
import 'Widgets/LoginWidget/LoginHeader.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height,
      color: Colors.white,
      child: ListView(
        children: [

          Positioned(
            child:  LoginHeader(),
          ),

          Stack(
            children: [

              Positioned(
                child: LoginForm(),
              )

            ],
          ),


          LoginAuth(),


        ],
      ),
    );

  }
}
