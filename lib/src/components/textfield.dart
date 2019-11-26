import 'package:flutter/material.dart';




class MyTextField extends StatelessWidget{
  final String text;
  final Icon icon;
  final TextEditingController cont;
  final  bool isPass ;

  MyTextField({Key key,
    this.text,
    this.cont,
    this.icon,
    this.isPass,
  }) : super(key : key);
  @override
   Widget build (BuildContext context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.grey,
            width: 1.2
          ),
        ),
        margin: EdgeInsets.only(left: 15 ,right: 15),
        child: Padding(
          padding : EdgeInsets.only(right : 5),
          child: TextField(
            obscureText: isPass == null ? false : true,

            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight : FontWeight.w500,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,

              icon: icon,
              hintText: "$text",
              hintStyle: TextStyle(
                color: Colors.white,
                fontSize: 19,
              ),

            ),

          ),
        ),
      ),
    );
  }


}