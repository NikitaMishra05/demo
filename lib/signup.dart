import 'package:demo/database.dart';
import 'package:demo/main.dart';
import 'package:demo/menu.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';


class Signup extends StatefulWidget{
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final gmail_controller=TextEditingController();
  final password_conroller=TextEditingController();
  final phone_controller=TextEditingController();
  final name_controller=TextEditingController();
  final dob_controller= TextEditingController();
  final FirebaseAuth _auth=FirebaseAuth.instance;
  String gender="none";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffD3D3D3),
      body:
         SingleChildScrollView(
           scrollDirection: Axis.vertical,
           child: Expanded(

             child: Container(
               height: 750,
               child: Column(

                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top:15.0),
                       child: Column(
                         children: [
                           Text("Hello Again!",
                               style: TextStyle(fontSize: 25,
                                 fontWeight:FontWeight.bold,)
                           ),
                           Text("Let's create an account \nOnly for you!",
                             style: TextStyle(fontSize: 18, ),
                             textAlign: TextAlign.center,),
                         ],
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.only(left: 20, right: 20),
                       child: Container(
                         padding: EdgeInsets.only(left: 15),
                         decoration: BoxDecoration(color:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: TextField(
                             controller: name_controller,
                             decoration: InputDecoration(border:  InputBorder.none,
                                 hintText: "Enter your Name",
                                 hintStyle: TextStyle(fontSize:14)
                             )),
                       ),
                     ),
                     Padding(
                       padding:  EdgeInsets.only(left: 20, right: 20),
                       child: Container(
                         padding: EdgeInsets.only(left: 15),
                         decoration: BoxDecoration(color:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: TextField(
                             controller: gmail_controller,
                             decoration: InputDecoration(border:  InputBorder.none,
                             hintText: "Enter your Email",
                             hintStyle: TextStyle(fontSize:14)
                         )),
                       ),
                     ),
                     Padding(
                       padding:  EdgeInsets.only(left: 20, right: 20),
                       child: Container(
                         padding: EdgeInsets.only(left: 15),
                         decoration: BoxDecoration(color:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: TextField(
                             controller: dob_controller,
                             decoration: InputDecoration(border:  InputBorder.none,
                                 hintText: "Enter your Date of Birth (DD/MM/YYYY)",
                                 hintStyle: TextStyle(fontSize:14)
                             )),
                       ),
                     ),
                     Column(

                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left: 25.0),
                           child: Text("Gender",
                           style: TextStyle(
                             fontSize: 18
                           ),
                           ),
                         ),
                         Row(
                           children: [
                             Expanded(
                               child: RadioListTile(title: Text("Female",
                               ),
                                   value: "female",
                                   groupValue: gender,
                                   onChanged: (value){
                                     setState(() {
                                       gender=value.toString();
                                     });
                                   }),
                             ),
                             Expanded(
                               child: RadioListTile(title: Container(
                                 width: 150,
                                 child: Text("Male",

                                 ),
                               ),
                                   value: "male",
                                   groupValue: gender,
                                   onChanged: (value){
                                     setState(() {
                                       gender=value.toString();
                                     });
                                   }),
                             ),
                           ],
                         )

                       ],
                     ),

                     Padding(
                       padding: EdgeInsets.only(left: 20, right: 20),
                       child: Container(
                         padding: EdgeInsets.only(left: 15),
                         decoration: BoxDecoration(color:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: TextField(
                           keyboardType: TextInputType.number,
                             controller: phone_controller,
                             decoration: InputDecoration(border:  InputBorder.none,
                             hintText: "Enter your Phone Number",
                             hintStyle: TextStyle(fontSize:14)
                         )),
                       ),
                     ),
                     Padding(
                       padding: EdgeInsets.only(left: 20,right: 20),
                       child: Container(
                         padding: EdgeInsets.only(left: 15),
                         decoration: BoxDecoration(color:Colors.white,
                             borderRadius: BorderRadius.all(Radius.circular(10))
                         ),
                         child: TextField(
                           controller: password_conroller,
                           decoration: InputDecoration(border:  InputBorder.none,

                             hintText: "Password",
                             hintStyle: TextStyle(fontSize:14)
                         ),


                         ),
                       ),
                     ),


                     Padding(padding: EdgeInsets.all(20),
                       child:InkWell(
                         onTap: (){
                           if(gmail_controller.value.text.isEmpty || password_conroller.value.text.isEmpty || phone_controller.value.text.isEmpty||name_controller.value.text.isEmpty || dob_controller.value.text.isEmpty)
                           {
                             final snackBar = SnackBar(
                               content: const Text('Fields cannot be empty'),
                               action: SnackBarAction(
                                 label: 'Undo',
                                 onPressed: () {
                                   // Some code to undo the change.
                                 },
                               ),
                             );
                             ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           }
                           else if(phone_controller.value.text.length < 10 || phone_controller.value.text.length > 10 ){
                             final snackBar = SnackBar(
                               content: const Text('Phone no. should be of 10 digits only'),
                               action: SnackBarAction(
                                 label: 'Undo',
                                 onPressed: () {
                                   // Some code to undo the change.
                                 },
                               ),
                             );
                             ScaffoldMessenger.of(context).showSnackBar(snackBar);

                           }
                           else if(!gmail_controller.value.text.endsWith("@gmail.com")){
                             final snackBar = SnackBar(
                               content: const Text('Invalid email'),
                               action: SnackBarAction(
                                 label: 'Undo',
                                 onPressed: () {
                                   // Some code to undo the change.
                                 },
                               ),
                             );
                             ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           }
                           else if(gender == "none"){
                             final snackBar = SnackBar(
                               content: const Text('Please select gender'),
                               action: SnackBarAction(
                                 label: 'Undo',
                                 onPressed: () {
                                   // Some code to undo the change.
                                 },
                               ),
                             );
                             ScaffoldMessenger.of(context).showSnackBar(snackBar);
                           }

                           else{
                             _register();
                           }

                         },
                         child:Container(
                           alignment: Alignment.center,
                           width: 325,
                           height: 47,
                           child: Text("Sign in",style: TextStyle(color: Colors.white,),),
                           decoration: BoxDecoration(color:Colors.deepOrange,
                             borderRadius: BorderRadius.all(Radius.circular(10)
                             ),
                           ),
                         ),
                       ),
                     ),


                     Padding(
                       padding: const EdgeInsets.only(left: 65),
                       child: Row(
                         children: [
                           Text("Already have an account "),
                           GestureDetector(
                             onTap: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeClass()));
                             },
                               child: Text("Sign Up",
                                 style: TextStyle(
                                     color: Colors.blueAccent),))
                         ],
                       ),
                     )

                   ]
               ),
             ),
           ),
         ),

    );
  }
  _register() async{
    User? user;
    try {
      final UserCredential credential = await
      _auth.createUserWithEmailAndPassword(
          email: gmail_controller.value.text.toString().trim(),
          password: password_conroller.value.text.toString().trim());
        user=credential.user;
        user=_auth.currentUser;

        if(user!=null){
          final result=await DatabaseService().addUser(
              name: name_controller.text,
              phone: phone_controller.text,
              dob: dob_controller.text,
              email: gmail_controller.text,
              gender: gender,
              password: password_conroller.text
          );

          if(result!=null){
            final snackbar= SnackBar(content: const Text("Account created and data added successfully"),
              action: SnackBarAction(
                label: 'Undo',
                onPressed: (){},

              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackbar);
            Navigator.push(context, MaterialPageRoute(builder:(context)=> Menu()));

          }

        }


    }


    on FirebaseAuthException catch (e){
      if(e.code=='Weak Password'){
        final snackbar= SnackBar(
          content: const Text('The password provided is too weak'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: (){},
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);



      }
      else if(e.code=='email-already-in-use'){
        final snackbar= SnackBar(content: const Text('The account already exist for that email'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: (){},
        ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }

    }
    catch(e){
      final snackbar= SnackBar(content: const Text('Something went wrong'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: (){},
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
    return user;
  }



  }

