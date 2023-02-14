import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Toggle extends StatefulWidget{
  @override
  State<Toggle> createState() => _ToggleState();
}

class _ToggleState extends State<Toggle> {
  bool isEnabled = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState(() {
            isEnabled = !isEnabled;
          });
        },
        child: Container(
        child:isEnabled ?
        Container(
          width: 55,
          height: 30,
          child:
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height:20,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
              Positioned(
                left: 25,
                child: Container(
                  height:28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff565555),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),

                ),
              ),

            ],
          ),

        ):
        Container(
          width: 55,
          height: 30,
          child:
          Stack(
            alignment:  Alignment.center,
            children: [
              Container(
                height:20,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),

              ),
              Positioned(

                right: 25,
                child: Container(
                  height:28,
                  width: 28,
                  decoration: BoxDecoration(
                    color: Color(0xff565555),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),

                ),
              ),

            ],
          ),

        ),

    ),
      );

  }
}

