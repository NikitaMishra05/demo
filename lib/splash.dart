import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Splash extends StatefulWidget{
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    super.initState();
    nextScreen();


  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.black,
     body: Container(

       alignment: Alignment.center,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Image.asset("assets/fork.png",
           height: 50,
             width: 50,
           ),
           Text("Foodies",
           style: TextStyle(
             color: Colors.white,
           ),
           )
         ],
       ),
     ),

   );
  }

  void nextScreen() {
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeClass()));
    });


  }
}