import 'package:flutter/material.dart';

class Search extends StatefulWidget{
  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Container(
            height: 170,
            width: 500,
            decoration: BoxDecoration(
              color: Colors.black,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Container(
                    height: 50,
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
                          Icon(Icons.search,
                          color: Colors.grey,
                            size: 35,
                          ),
                          Text("Search foods, restaurents and more...",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 34,
                          width: 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(100)),
                          ),
                          child: Text("Dishes",
                          style:TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                          ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        height: 34,
                        width: 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(

                          border: Border.all(style: BorderStyle.solid,color: Colors.white,),
                          borderRadius: BorderRadius.all(Radius.circular(100),

                          ),
                        ),
                        child: Text("Restaurent",
                          style:TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),

              ],
            ),

          ),
          Container(
            height: 100,
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Shahi Paneer",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
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
                    ),

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
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 100,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shahi Paneer",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
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
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Container(
                      height: 40,
                      width: 90,
                      alignment: Alignment.center,
                      color: Color(0xffEFF1FE),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("-",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 24,

                            ),

                          ),
                          Text("1",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 14,

                            ),

                          ),
                          Text("+",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: 17,

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
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 100,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shahi Paneer",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
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
                    ),
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 100,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shahi Paneer",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
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
                    ),
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
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 100,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Shahi Paneer",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
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
                    ),
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
            ),
          ),
        ],
      ),

    );
  }
}