import 'package:demo/toggle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Menu extends StatefulWidget{
  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [

          Container(
            height: 180,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 26),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Menu",
                      style: TextStyle(color: Colors.white,
                      fontSize: 16,
                        fontWeight:FontWeight.bold,
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset("assets/fork.png"),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 45,
                    width: 330,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [

                          Text("Search in ",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text("Sahil Hotel",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500
                          ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text("Veg Only",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Toggle(),
                        ],
                      ),

                      Row(
                        children: [
                          Text("Non veg Only",
                            style:TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Toggle(),
                        ],
                      ),

                    ],
                  ),
                ),

              ],
            ),

          ),
          Container(
            height: 80,
            width: 428,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Recommended (8)",
                          style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),

                        ),
                        
                        
                        

                      ],

                    ),
                  ),

                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 80,
              width: 428,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Non veg Pizza (8)",
                            style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),

                          ),
                          
                        ],

                      ),
                    ),

                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 280,
              width: 428,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Veg Pizza (9)",
                            style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),

                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Paneer Pizza",
                                    style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),

                                  ),
                                  Text("100",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),

                                  ),
                                  Text("Starter",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),

                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  alignment: Alignment.center,
                                  color: Color(0xffEFF1FE),
                                  child: Text("Add",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 14,

                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Paneer Pizza",
                                    style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),

                                  ),
                                  Text("100",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),

                                  ),
                                  Text("Starter",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),

                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  alignment: Alignment.center,
                                  color: Color(0xffEFF1FE),
                                  child: Text("Add",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 14,

                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Paneer Pizza",
                                    style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                    ),

                                  ),
                                  Text("100",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14,
                                    ),

                                  ),
                                  Text("Starter",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                    ),

                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Container(
                                  height: 40,
                                  width: 90,
                                  alignment: Alignment.center,
                                  color: Color(0xffEFF1FE),
                                  child: Text("Add",
                                    style: TextStyle(
                                      color: Colors.orange,
                                      fontSize: 14,

                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),






                        ],

                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Container(
              height: 80,
              width: 428,
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Non veg Pizza (8)",
                            style: TextStyle(color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),

                          ),





                        ],

                      ),
                    ),

                  ),

                ],
              ),
            ),
          ),



        ],
      ),
      floatingActionButton:  FloatingActionButton.large(
        onPressed: (){
        Navigator.pop(context);

      },
        backgroundColor: Colors.black,


        child:Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset("assets/forktwo.png",
              height: 30,
                fit: BoxFit.fill,

              ),
              Text("Menu",
                style: TextStyle(
                    fontSize: 16

                ),)
            ],

          ),
        ),),
    );
  }
}