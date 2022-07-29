import 'package:flutter/material.dart';


class PostBottomAppBar extends StatefulWidget {
  @override
  _PostBottomAppBarState createState() => _PostBottomAppBarState();
}

class _PostBottomAppBarState extends State<PostBottomAppBar> {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height*.1,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(50), topRight:Radius.circular(50)),
        color: Color(int.parse("0xff${"000140"}"))
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [

          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.home, color: Colors.yellow,),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.search, color: Colors.yellow,),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.add_box, color: Colors.yellow,),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.notifications, color: Colors.yellow,),
          ),

          Container(
            padding: EdgeInsets.all(5),
            child: Icon(Icons.person, color: Colors.yellow,),
          )

        ],
      ),
    );
  }
}
