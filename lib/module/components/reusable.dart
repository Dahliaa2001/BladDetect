import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:projectt3/module/pages/about.dart';
import 'package:projectt3/module/pages/help.dart';
import 'package:projectt3/module/pages/homepage.dart';
import '../pages/profile.dart';
Widget navBar(context,bool isColor1,bool isColor2,bool isColor3,bool isColor4,bool isBk1,bool isBk2,bool isBk3,bool isBk4
    )=>Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          right: 10,
          top: 20
        ),
        child: Container(
          child: Row(
children: [
 Padding(padding: const EdgeInsets.all(8),
 child:  Container(
   decoration: BoxDecoration(
     color: isBk1?HexColor("E30175"):Colors.white,
     borderRadius: BorderRadius.circular(40)
   ),
     child:   MaterialButton(onPressed: (){
       Navigator.push(context,MaterialPageRoute(builder: (context)=>homePage()));
     },
       padding: const EdgeInsets.all(20),
       child:
       Text('Home',
         style:TextStyle(
           color:isColor1?Colors.white:HexColor("E30175"),fontSize: 30,
           fontFamily: "cinzel"
         ) ,
       ),
     ),
   ),
 ),
const SizedBox(
width: 15,
),
Padding(padding: const EdgeInsets.all(8),
child:  Container(
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(40),
    color:  isBk2?HexColor("E30175"):Colors.white,
  ),
  child:   MaterialButton(onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>profile()));
  },
    padding: const EdgeInsets.all(20),
    child:
    Text('Profile',
      style:TextStyle(
        color: isColor2?Colors.white:HexColor("E30175"),fontSize: 30,
        fontFamily: "Cinzel"
      ) ,),
  ),
),
  ),
const SizedBox(
width: 15,
),
Padding(padding: const EdgeInsets.all(8),
child:
Container(
  decoration: BoxDecoration(
      color: isBk3?HexColor("E30175"):Colors.white,
      borderRadius: BorderRadius.circular(40)
  ),
  child:   MaterialButton(onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>about()));
  },
    padding:const EdgeInsetsDirectional.all(20),
    child:
    Text('About',
      style:TextStyle(
        color:isColor3?Colors.white:HexColor("E30175"),fontSize: 30,
        fontFamily: "Cinzel"
      ) ,),
  ),
),
),
const SizedBox(
width: 15,
),
Padding(padding: EdgeInsets.only(left: 8,top: 10,bottom: 10),
child: Container(
  decoration: BoxDecoration(
      color:  isBk4?HexColor("E30175"):Colors.white,
      borderRadius: BorderRadius.circular(40)
  ),
  child:   MaterialButton(onPressed: (){
    Navigator.push(context,MaterialPageRoute(builder: (context)=>help()));
  },
    padding:EdgeInsetsDirectional.all(20),
    child:
    Text('Help',
        style:TextStyle(
            color:isColor4?Colors.white:HexColor("E30175"),fontSize: 30,
            fontFamily:"Cinzel"
        ) ),
  ),
) ,
),
const Spacer(),
const Expanded(child:Padding(
padding: EdgeInsets.only(left: 200
),
child: Image(image: AssetImage('images/logo.png'),
//height: 150,
)
)),
   const Expanded(
        child: Image(image: AssetImage('images/BladDetect.png'),
         // height: 100,
          width:35,
),
),
]))),
    );
