import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import '../components/reusable.dart';
class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              child:   Expanded(
                  child: Container(
                    alignment:Alignment.bottomRight ,
                    child:  const Image(
                      image: AssetImage(
                          'images/22.png'),
                      fit: BoxFit.fitHeight,
                    ),)),),
            Expanded(
              child: Container(
                width:MediaQuery.of(context).size.width,
                child:  const Expanded(
                  child: Image(image: AssetImage('images/1.png'),
                  fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ) ,
Padding(
  padding: const EdgeInsets.only(
    left: 60
  ),
    child: navBar(context, false, false, true, false, false, false, true, false)),
            Center(
        child: Expanded(
        child: Container(
        decoration:  BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
              color:Colors.grey,
              offset: Offset(4,4),
              blurRadius: 15,
              spreadRadius: 1
          ),
          BoxShadow(
              color:Colors.white,
              offset: Offset(-4,-4),
              blurRadius: 15,
              spreadRadius: 1
          )
        ],
        borderRadius: BorderRadius.circular(10)
    ),
    height: MediaQuery.of(context).size.height*0.65,
    width: MediaQuery.of(context).size.width*0.65,
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Expanded(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Expanded(
          child: Row(
              children:  [
               Expanded(child:
               Container(
                 child: Column(
                   children: [
                     Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Container(
                           child: Text('BladDetect',
                           style: TextStyle(decoration: TextDecoration.underline,
                           fontSize: 25,
                               color: HexColor("E30175")
                           ),
                           ),
                         ),
                       ],
                     ),
                     const Text('Is a website assisted with deep learning model to make an accurate fast detection of bladder cancer',
                       textAlign: TextAlign.start,
                       style: TextStyle(
                           fontSize: 22
                       ),
                     ),
                     const Text('Created by tumorous team which is Supervised by'
                         ' Dr. Asmaa Hamdy at Faculty of Engineering Mansoura University',
                       textAlign: TextAlign.start, style: TextStyle(
                           fontSize: 22
                       ),
                     ),
                     const Text('Aiming to achieve Egypt vision 2030',
                       textAlign: TextAlign.start,
                       style: TextStyle(
                           fontSize: 22
                       ),
                     )
                   ],
                 ),
               )
               ),
                Expanded(
                  child: Container(
                      decoration: const BoxDecoration(
                      ),
                      child:  const Padding(
                        padding: EdgeInsets.only(left: 40.0),
                        child:Image(image: AssetImage ('images/bladder 21.png',),
                          width: 600,
                          height: 450,
                        ), )
                  ),
                ),
              ]),
        ),
      )
           ])
    ))))),
          ],
        )
    );
  }
}
