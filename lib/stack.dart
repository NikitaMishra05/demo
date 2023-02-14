import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stakk extends StatefulWidget{
  @override
  State<Stakk> createState() => _StakkState();
}

class _StakkState extends State<Stakk> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: 300,
          width: 225,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(
                    color: Colors.blue,
                    child: Image.asset("assets/Dessert.jpeg",
                      fit: BoxFit.fill,
                      height: 250,
                      width: 200,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 50,
                left: 8,
                child: Container(

                  height: 25,
                  width: 75,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Colors.white,

                  ),
                  child: Text("50% Off",
                    style: TextStyle(
                      fontWeight: FontWeight.w900
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 25,
                child: Container(
                  width: 180,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Cafe\nMasuma",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                      color: Colors.white,
                      ),

                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}