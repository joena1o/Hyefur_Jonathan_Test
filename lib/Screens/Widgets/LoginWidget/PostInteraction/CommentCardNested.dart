import 'package:flutter/material.dart';

class CommentCardNested extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(

      padding: EdgeInsets.symmetric(horizontal: 20),

      child: Column(

        children: [

          Container(
            child: ListTile(

              contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

              leading: CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:Image(image: AssetImage("assets/pic.png"),),
                  )
              ),

              title: Text("Devon lane"),

              trailing: Icon(Icons.more_vert, size: 13,),

            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("He'll want to use your yacht, and I don't want this thing smelling like fish", style: TextStyle(color: Color(int.parse("0xff${"000140"}"))),),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text("6:00pm", style: TextStyle(color: Colors.grey),),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Text("09 feb 2020", style: TextStyle(color: Colors.grey),),
                )
              ],
            ),
          ),


          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.keyboard_arrow_left, color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.favorite, color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.share,color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.bookmark_outline, color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.monetization_on, color: Colors.yellow,),
                ),
              ],
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            child: Text("- show 2 more replies", style: TextStyle(color:Colors.grey),),
          ),

          Container(
            child: ListTile(

              contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),

              leading: CircleAvatar(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child:Image(image: AssetImage("assets/pic.png"),),
                  )
              ),

              title: Text("Devon lane"),

              trailing: Icon(Icons.more_vert, size: 13,),

            ),
          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            margin: EdgeInsets.symmetric(vertical: 10),

            width: size.width *.5,
            height: 50,
            decoration: BoxDecoration(
              color: Color(int.parse("0xff${"0E106C"}")),
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  spreadRadius: 1,
                  blurRadius: 1,
                  color: Color(int.parse("0xff${"0E106C"}")),

                )
              ]
            ),
            child: Container(
                width: size.width *.5,
                child:Icon(Icons.play_arrow, color: Colors.yellow,)),

          ),

          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.keyboard_arrow_left, color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.favorite, color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.share,color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.bookmark_outline, color: Colors.yellow,),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Icon(Icons.monetization_on, color: Colors.yellow,),
                ),
              ],
            ),
          ),


        ],

      ),

    );
  }
}
