import 'package:demo/firebase_options.dart';
import 'package:demo/menu.dart';
import 'package:demo/profile.dart';
import 'package:demo/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return  MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "My App",
    theme: ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,

    ),
    home: Profile(),
  );

  }
}
class HomeClass extends StatefulWidget {


    HomeClass({super.key});

  @override
  State<HomeClass> createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  final password_controller=TextEditingController();
  final username_controller=TextEditingController();
  final FirebaseAuth _auth= FirebaseAuth.instance;


bool isvisible=false;
  @override
  Widget build(BuildContext context) {
  return  Scaffold(

      backgroundColor: Color(0xffD3D3D3),
    body:Container( width: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Hello Again!",
              style: TextStyle(fontSize: 25,
                fontWeight:FontWeight.bold,)
          ),
          SizedBox(height: 10,),
          Text("Welcome back you've \n been missed!",
            style: TextStyle(fontSize: 18, ),
            textAlign: TextAlign.center,),
          SizedBox(height: 15,),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(color:Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: TextField(
                    controller: username_controller,
                  decoration: InputDecoration(border:  InputBorder.none,

              hintText: "Enter your username",
                hintStyle: TextStyle(fontSize:14)
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20,),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(color:Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: TextField(
                controller: password_controller,
                decoration: InputDecoration(border:  InputBorder.none,
                  suffixIcon: InkWell(onTap: ()
                  {
                    setState(() {
                      isvisible=!isvisible;
                    });
                  },

                      child: isvisible?Icon(Icons.visibility_off):Icon(Icons.visibility)),
                  hintText: "Password",
                  hintStyle: TextStyle(fontSize:14)
              ),

              obscureText: isvisible,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 200,top: 10),
            child: Text("Recovery Password",
              style: TextStyle(fontSize: 10,
                  fontWeight: FontWeight.w500),

            ),
          ),
          SizedBox(height: 10,),

          Padding(padding: EdgeInsets.all(20),
          child:InkWell(
            onTap: (){
              if(username_controller.value.text.isEmpty || password_controller.value.text.isEmpty)
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
              else if (password_controller.value.text.length < 8)
              {
                final snackBar = SnackBar(
                  content: const Text('Password cannot be less than 8'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      // Some code to undo the change.
                    },
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);

              }
              else if (!username_controller.value.text.endsWith("@gmail.com"))
              {
                final snackBar = SnackBar(
                  content: const Text('Invalid Email'),
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
                _login();


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
            padding: const EdgeInsets.only(left: 70.0,right:70.0,top: 20),
            child: Row(
              children: [
                Container(
                    width: 50,
                    padding: EdgeInsets.only(right: 15),
                    child: Divider(thickness: 1,color: Colors.black,height: 10)),
                Text("Or continue with",),
                Container(
                    width: 50,
                    padding: EdgeInsets.only(left: 15),
                    child: Divider(thickness: 1,color: Colors.black,height: 10)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 85,
                  height: 55,
                  child: Image.asset("assets/Google.png"),
                  decoration: BoxDecoration(color: Color(0xffD3D3D3),
                      borderRadius: BorderRadius.all(Radius.circular(10),

                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      )
                  ),


                ),

                Container(
                  alignment: Alignment.center,
                  width: 85,
                  height: 55,
                  child: Image.asset("assets/Apple.png",
                  height:40,
                  ),
                  decoration: BoxDecoration(color: Color(0xffD3D3D3),
                      borderRadius: BorderRadius.all(Radius.circular(10),

                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      )
                  ),


                ),
                Container(
                  alignment: Alignment.center,
                  width: 85,
                  height: 55,
                  child: Image.asset("assets/Facebook.png",
                  height:35,
                  ),
                  decoration: BoxDecoration(color: Color(0xffD3D3D3),
                      borderRadius: BorderRadius.all(Radius.circular(10),

                      ),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      )
                  ),


                ),

              ]
            ),
            
          ),

          Padding(
            padding: EdgeInsets.only(top: 60,left: 70,right: 70),
            child: Row(
              children: [
                Text("Not a member? "),
                GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Signup()));
                    },
                    child: Text("Register now",style: TextStyle(color: Colors.blueAccent),))
              ],
            ),
          )

      ]
      ),
    )

  );
  }



   _login()async {
    User? user;
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: username_controller.value.text.toString().trim(),
        password: password_controller.value.text.toString().trim(),

      );
      user = userCredential.user;

      final snackBar = SnackBar(
        content: const Text('Log in successful.'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            // Some code to undo the change.
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);

      Navigator.push(context, MaterialPageRoute(builder: (context)=> Menu()));
    }
    on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        final snackBar = SnackBar(
          content: const Text('No user found for that email.'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'wrong-password') {
        final snackBar = SnackBar(
          content: const Text('Wrong password provided.'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }

    return user;
  }

  }
