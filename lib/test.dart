import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';




class Practice extends StatefulWidget{
  const Practice({super.key});

  @override
  State<Practice> createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  bool isLoggedIn=true;
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    body:Container(
      width: 500,
      height: 500,

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [

          Row(
              mainAxisAlignment: MainAxisAlignment.end,
            children: [

              GestureDetector(onTap: (){
                setState(() {
                  isLoggedIn=!isLoggedIn;
                });
              },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(

                    width:100,
                    height:50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
                      color: Colors.deepOrangeAccent,),
                    child:isLoggedIn?Text("Log out",
                      style: TextStyle( fontSize:18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, ),
                    ):Text("Log in",
                      style: TextStyle( fontSize:18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white, ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width:300,
            height:300,
            alignment: Alignment.center,

            decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),
              color: Colors.lightBlue,),
            child: isLoggedIn? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("We are Good to go" ,
                  style: TextStyle( fontSize:18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, ),
  
                ),
                Image.asset("assets/login.png",
                height: 150,

                )
              ],
            ):Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("We miss you Please login" ,
                  style: TextStyle( fontSize:18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, ),

                ),
                Image.asset("assets/logout.png",
                  height: 150,

                )
              ],
            ),
          )











        ],

      ),
    )


  );
  }
}