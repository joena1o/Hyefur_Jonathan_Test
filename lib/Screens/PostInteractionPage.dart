import 'package:flutter/material.dart';

import 'Widgets/LoginWidget/PostInteraction/BottomAppBar.dart';
import 'Widgets/LoginWidget/PostInteraction/CommentCard.dart';
import 'Widgets/LoginWidget/PostInteraction/CommentCardNested.dart';

class PostInteraction extends StatefulWidget {
  @override
  _PostInteractionState createState() => _PostInteractionState();
}

class _PostInteractionState extends State<PostInteraction> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          title: Text("Comments"),
          elevation: 0,
          backgroundColor: Colors.white,
          foregroundColor: Colors.indigo,
          leading: Icon(Icons.keyboard_backspace, color: Colors.indigo,),
        ),

        body: Container(

          width: size.width,
          height: size.height,

          child: ListView(
            children: [

              CommentCard(),
              CommentCardNested(),


            ],
          ),
        ),


        bottomNavigationBar: PostBottomAppBar(),

      ),
    );
  }
}
