import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'database.dart';

class Profile extends StatefulWidget{
  @override
  State<Profile> createState() => _ProfileState();
  const Profile({Key? key, required this.email}) : super(key: key);
  final String email;
}

class _ProfileState extends State<Profile> {
   //String name = '';

    Map<String, dynamic> userData = <String, dynamic>{};

  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 500,
            color: Colors.blue,
            child: Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text("Profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w900
                ),

              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/login.png',
                height: 80,
                ),
                Column(
                  children: [
                    Text("Name: "+userData['full_name'].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    Text("Email: "+userData['email'].toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.grey
                        ),

                    )
                  ],
                )
              ],
            ),
          ),
          Divider(
            height: 2,
            thickness: 2,
            color: Colors.blue,
          ),

          Container(
            height: 300,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Icon(Icons.calendar_month_outlined,
                        color: Colors.orange,
                        size: 40,
                      ),
                      Text(userData['dob'].toString())

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.female_outlined,
                        color: Colors.green,
                        size: 55,
                      ),
                      Text(userData['gender'].toString())

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone,
                        color: Colors.blueAccent,
                        size: 40,
                      ),
                      Text(userData['phone'].toString())

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.logout,
                        color: Colors.redAccent,
                        size: 40,
                      ),
                      Text("  Log out")

                    ],
                  ),

                ],
              ),
            ),
          ),



        
        ],
      )



    );


  }

  void getData() async {
    userData = (await DatabaseService().getUser(widget.email))!;
    setState(() {});

  }
}