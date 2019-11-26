import 'package:flutter/material.dart';
import 'package:hadi/src/components/Button.dart';
import 'package:hadi/src/components/textfield.dart';

class Login extends StatefulWidget{


 Login({Key key}) : super(key : key);


 _Login createState() => _Login();

}

class _Login extends State<Login> {

 @override

 Widget build (BuildContext context){

   return Scaffold(
     body: Stack(
       alignment: Alignment.bottomCenter,
       children: <Widget>[
         Container(
           width: MediaQuery.of(context).size.width,
           height: MediaQuery.of(context).size.height,
           child: Image.asset("assets/images/12.jpg",fit: BoxFit.cover,),
         ),

        FormLogin(),
         MyButton(
           width: MediaQuery.of(context).size.width,
           text: "ورود",
           click: (){

           },
         )

       ],
     ),

   );

 }
}



 class FormLogin extends StatefulWidget {
   @override
   _FormLoginState createState() => _FormLoginState();
 }

 class _FormLoginState extends State<FormLogin> {
   @override
   Widget build(BuildContext context) {
     return Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: <Widget>[
         MyTextField(
           text: "ایمیل کاربری",
           icon: Icon(Icons.person,color: Colors.white,size: 24,),
         ),
         SizedBox(
           height: 20,
         ),
         MyTextField(
           isPass: true,
           text: "پسورد",
           icon: Icon(Icons.lock,color: Colors.white,size: 24,),
         ),
         Padding(
           padding: EdgeInsets.only(
             top: 20
           ),
           child: Text("حساب کاربری ندارید؟ عضو شوید !",textDirection: TextDirection.rtl,style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.bold,
             color: Colors.white
           ),),
         )

       ],

     );


   }
 }

