import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Scrolling_layouts extends StatefulWidget{
  const Scrolling_layouts({super.key});

  @override
  State<Scrolling_layouts> createState() => _Scrolling_layoutsState();
}

class _Scrolling_layoutsState extends State<Scrolling_layouts> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       height: double.infinity,

       child: Column(
         children: [
           Container(
             width: 500,
             height: 150,
             color: Colors.black87,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.center,
               mainAxisAlignment: MainAxisAlignment.center,

               children: [
                 Container(
                   height:50,
                   width: 300,
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius:BorderRadius.all(Radius.circular(6)),),
                   child: Row(
                     children: [
                       Text("Search food, restaurent and more...",
                       style: TextStyle(
                         color: Colors.grey,

                       ),

                       ),
                     ],
                   ),
                 )


               ],

             ),

           ),

           Expanded(
             flex: 6,
             child: SingleChildScrollView(
               scrollDirection: Axis.vertical,
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text("Trending Dishes",
                   style: TextStyle(color: Colors.black,
                   fontWeight: FontWeight.bold,
                     fontSize: 16,
                   ),
                   ),
                   SingleChildScrollView(
                     scrollDirection: Axis.horizontal,
                     child: Padding(
                       padding: const EdgeInsets.only(top: 18.0),
                       child: Container(
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(16.0),
                               child: Container(
                                 height: 170,
                                 width: 250,
                                 decoration: BoxDecoration(
                                   gradient: LinearGradient(
                                     begin: Alignment.topLeft,
                                     end: Alignment.bottomRight,
                                     colors: [
                                       Colors.black87,
                                       Colors.black12,

                                     ],

                                   ),
                                 ),
                                 child: Row(
                                   children: [
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                       children: [
                                         Container(
                                           width:150,
                                           child: Text("Free Delivery & 50% Off",
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontSize:20,
                                             fontWeight: FontWeight.bold,
                                           ),
                                           ),
                                         ),
                                         Text("On your first order",
                                         style: TextStyle(
                                           color: Colors.grey,
                                           fontSize: 12,
                                         )
                                         ),
                                         ElevatedButton(onPressed: (){},
                                           style: ElevatedButton.styleFrom(primary: Colors.white,),
                                             child: Text("Order now",
                                             style: TextStyle(color: Colors.black87,)
                                             ),
                                         )


                                       ],
                                     ),
                                   ],

                                 ),
                                 
                               ),
                             ),


                             Container(
                               height: 190,
                               width: 250,
                               decoration: BoxDecoration(
                                 color: Colors.white,
                                 borderRadius: BorderRadius.all(Radius.circular(16)),

                               ),
                               child: Column(

                                 children: [
                                   Image.asset("assets/food.png",
                                     width: 250,

                                   ),
                                   Padding(
                                     padding: const EdgeInsets.all(8.0),
                                     child: Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                                             Text("Shahi Paneer",
                                               style: TextStyle(fontWeight: FontWeight.bold,
                                               fontSize: 16,
                                               ),

                                             ),
                                             Text("Cafe Masuma",
                                             style: TextStyle(fontSize: 12,
                                             color: Colors.grey,
                                             ),
                                             )
                                           ],
                                         ),
                                         Container(
                                           width:100,
                                             height: 40,
                                             alignment: Alignment.center,
                                             decoration: BoxDecoration(
                                               color: Color(0xffEFF1FE),
                                               border: Border.all(style: BorderStyle.solid,color: Colors.orange,),
                                                   borderRadius: BorderRadius.all(Radius.circular(5))
                                             ),

                                             child:
                                             Text("Add to cart",
                                               style:TextStyle(fontWeight: FontWeight.bold,
                                               color: Colors.orange,
                                               ) ,

                                             ),

                                         ),

                                       ],
                                       
                                     ),
                                   )

                                 ],
                               ),
                             ),

                             
                           ],
                         ),
                       ),
                     ),
                   ),




                   Container(
                     height: 100,
                     width: 390,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.all(Radius.circular(16)),
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Row(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                               ClipRRect(
                                 borderRadius:BorderRadius.circular(10),
                                 child: Image.asset("assets/res.png",

                                 ),
                               ),
                           Padding(
                             padding: const EdgeInsets.only(left: 8.0),
                             child: Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: [
                                 Text("Cafe Masuma",
                                 style: TextStyle(fontSize:16,
                                 fontWeight: FontWeight.bold,
                                 ),
                                 ),
                                 Text("Fast Food & Snacks",
                                 style: TextStyle(
                                   fontSize: 14,
                                   fontWeight: FontWeight.w400,
                                   color: Colors.orange,

                                 ),
                                 ),
                                 Container(
                                   width: 150,
                                   child: Text("Dadri Rd, Natthu Colony, Barola, Sector 49.",
                                     maxLines: 2,
                                     style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.black12,
                                     ),

                                   ),
                                 ),
                               ],
                             ),
                           ),
                           Container(
                             width: 60,
                             height: 30,
                             decoration: BoxDecoration(
                               color:Color(0xffECF4FF),
                               borderRadius: BorderRadius.all(Radius.circular(4),)
                             ),

                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceAround,
                               children: [
                                 Icon(Icons.star,
                                 color: Colors.amber,
                                   size: 20,
                                 ),
                                 Text("4.3",
                                 style: TextStyle(
                                   fontSize: 12,
                                 ),
                                 ),
                               ],
                             ),
                           )

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
     )
   );
  }
}