import 'package:flutter/material.dart';




class MyButton extends StatelessWidget{
 final String text;
 final Function click ;
 final double width;



  MyButton({ Key key,
    this.width,
    this.text,
    this.click



  }) : super(key : key);

  @override
  Widget build (BuildContext context){
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        width: width,
        height : 50,
        child: RaisedButton(
          child: Text("$text",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold , fontFamily: "nas"),),
          color: Colors.deepPurpleAccent,
          onPressed: click,
        ),
      ),
    );
  }

}