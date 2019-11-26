import 'dart:async';
import 'package:flutter/material.dart';



class SplashScreen extends StatefulWidget{
  SplashScreen({Key key}) : super(key:key);

  @override
  _SplashScreen createState()=>_SplashScreen();
}

class _SplashScreen extends State<SplashScreen>{

  navigating(){
    Navigator.of(context).pushReplacementNamed("/Login");

  }

  waiting(){
    var waitingTime = new Duration(seconds: 3);
    return Timer(waitingTime , navigating);
  }





  @override
  void initState() {
    super.initState();
 waiting();
  }
  @override


  Widget build (BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand ,
        children : <Widget>[
        Column(
          mainAxisAlignment : MainAxisAlignment.center,
          children:<Widget>[
             Container(
                width: 125,
                height: 125,
                decoration: new BoxDecoration(
                ),
                child: FlutterLogo(
                  colors: Colors.red,
                ),

            ),
              Padding(
              padding: EdgeInsets.only(top : 10 , left: 20),
              child: Text("فلاتر",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold
              ),),
            ),
          ]
        ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding : EdgeInsets.only(bottom : 60),
              child: CircularProgressIndicator(
                backgroundColor: Colors.red,
                strokeWidth: 10,
              ),
            ),
          )

        ]
      ),


    );
  }
}