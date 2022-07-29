import 'package:flutter/material.dart';
import 'package:hyefur_jonathan/Api/Login.dart';

import '../../PostInteractionPage.dart';

class LoginForm extends StatelessWidget {
  Login login = new Login();

  final _formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Alert(message, context) {
    ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Colors.white,
      child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Color(int.parse("0xff${"F2F5F9"}"))),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    return null;
                  },
                  controller: email,
                  decoration: InputDecoration(
                      hintText: "Username or Email",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.person)),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Color(int.parse("0xff${"F2F5F9"}"))),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return null;
                    }
                    return null;
                  },
                  controller: password,
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.lock)),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.yellow, width: 1),
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.yellow,
                            blurRadius: 5,
                            spreadRadius: 2),
                      ]),
                  child: FlatButton(

                    onPressed: () {
                      if (email.text.toString().isNotEmpty && password.text.toString().isNotEmpty) {
                        showDialog(
                            context: context,
                            builder: (_) {
                               return Center(
                                    child: CircularProgressIndicator(),
                                  );
                            });

                        login.LoginUser(
                                email.text.toString(), password.text.toString())
                            .then((value) {
                          if (value == true) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (_) => PostInteraction()));
                          } else {
                            Alert("Login failed", context);
                          }
                        });
                      } else {


                        Alert("Please Fill in Empty Fields", context);

                      }
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(color: Colors.black),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text("Or"),
              )
            ],
          )),
    );
  }
}
